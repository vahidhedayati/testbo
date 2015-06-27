package ajaxdependancyselectexample



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComputersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Computers.list(params), model:[computersInstanceCount: Computers.count()]
    }

    def show(Computers computersInstance) {
        respond computersInstance
    }

    def create() {
        respond new Computers(params)
    }

    @Transactional
    def save(Computers computersInstance) {
        if (computersInstance == null) {
            notFound()
            return
        }

        if (computersInstance.hasErrors()) {
            respond computersInstance.errors, view:'create'
            return
        }

        computersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'computers.label', default: 'Computers'), computersInstance.id])
                redirect computersInstance
            }
            '*' { respond computersInstance, [status: CREATED] }
        }
    }

    def edit(Computers computersInstance) {
        respond computersInstance
    }

    @Transactional
    def update(Computers computersInstance) {
        if (computersInstance == null) {
            notFound()
            return
        }

        if (computersInstance.hasErrors()) {
            respond computersInstance.errors, view:'edit'
            return
        }

        computersInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Computers.label', default: 'Computers'), computersInstance.id])
                redirect computersInstance
            }
            '*'{ respond computersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Computers computersInstance) {

        if (computersInstance == null) {
            notFound()
            return
        }

        computersInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Computers.label', default: 'Computers'), computersInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'computers.label', default: 'Computers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
