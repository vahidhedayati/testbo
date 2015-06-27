package ajaxdependancyselectexample



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Os.list(params), model:[osInstanceCount: Os.count()]
    }

    def show(Os osInstance) {
        respond osInstance
    }

    def create() {
        respond new Os(params)
    }

    @Transactional
    def save(Os osInstance) {
        if (osInstance == null) {
            notFound()
            return
        }

        if (osInstance.hasErrors()) {
            respond osInstance.errors, view:'create'
            return
        }

        osInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'os.label', default: 'Os'), osInstance.id])
                redirect osInstance
            }
            '*' { respond osInstance, [status: CREATED] }
        }
    }

    def edit(Os osInstance) {
        respond osInstance
    }

    @Transactional
    def update(Os osInstance) {
        if (osInstance == null) {
            notFound()
            return
        }

        if (osInstance.hasErrors()) {
            respond osInstance.errors, view:'edit'
            return
        }

        osInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Os.label', default: 'Os'), osInstance.id])
                redirect osInstance
            }
            '*'{ respond osInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Os osInstance) {

        if (osInstance == null) {
            notFound()
            return
        }

        osInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Os.label', default: 'Os'), osInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'os.label', default: 'Os'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
