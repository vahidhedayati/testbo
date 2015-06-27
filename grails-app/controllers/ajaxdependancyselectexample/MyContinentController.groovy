package ajaxdependancyselectexample



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MyContinentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MyContinent.list(params), model:[myContinentInstanceCount: MyContinent.count()]
    }

    def show(MyContinent myContinentInstance) {
        respond myContinentInstance
    }

    def create() {
        respond new MyContinent(params)
    }

    @Transactional
    def save(MyContinent myContinentInstance) {
        if (myContinentInstance == null) {
            notFound()
            return
        }

        if (myContinentInstance.hasErrors()) {
            respond myContinentInstance.errors, view:'create'
            return
        }

        myContinentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'myContinent.label', default: 'MyContinent'), myContinentInstance.id])
                redirect myContinentInstance
            }
            '*' { respond myContinentInstance, [status: CREATED] }
        }
    }

    def edit(MyContinent myContinentInstance) {
        respond myContinentInstance
    }

    @Transactional
    def update(MyContinent myContinentInstance) {
        if (myContinentInstance == null) {
            notFound()
            return
        }

        if (myContinentInstance.hasErrors()) {
            respond myContinentInstance.errors, view:'edit'
            return
        }

        myContinentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MyContinent.label', default: 'MyContinent'), myContinentInstance.id])
                redirect myContinentInstance
            }
            '*'{ respond myContinentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MyContinent myContinentInstance) {

        if (myContinentInstance == null) {
            notFound()
            return
        }

        myContinentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MyContinent.label', default: 'MyContinent'), myContinentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'myContinent.label', default: 'MyContinent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
