package org.nest5

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

class ComentarioController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    @Secured(["ROLE_ADMIN"])
    def index() {
        redirect(action: "list", params: params)
    }
    @Secured(["ROLE_ADMIN"])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ComentarioInstanceList: Comentario.list(params), ComentarioInstanceTotal: Comentario.count()]
    }
    @Secured(["ROLE_ADMIN"])
    def create() {
        [ComentarioInstance: new Comentario(params)]
    }

    def save() {
        def ComentarioInstance = new Comentario()
        ComentarioInstance.properties = params
        ComentarioInstance.date = new Date()
        if (!ComentarioInstance.save(flush: true)) {
            redirect(controller: 'post', action: 'details', params: [id: params.post.id])
            return
        }

        //flash.message = message(code: 'default.created.message', args: [message(code: 'Comentario.label', default: 'Comentario'), ComentarioInstance.id])
        redirect(controller: 'post', action: 'details', params: [id: params.post.id])
    }
    @Secured(["ROLE_ADMIN"])
    def show(Long id) {
        def ComentarioInstance = Comentario.get(id)
        if (!ComentarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "list")
            return
        }

        [ComentarioInstance: ComentarioInstance]
    }
    @Secured(["ROLE_ADMIN"])
    def edit(Long id) {
        def ComentarioInstance = Comentario.get(id)
        if (!ComentarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "list")
            return
        }

        [ComentarioInstance: ComentarioInstance]
    }
    @Secured(["ROLE_ADMIN"])
    def update(Long id, Long version) {
        def ComentarioInstance = Comentario.get(id)
        if (!ComentarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ComentarioInstance.version > version) {
                ComentarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'Comentario.label', default: 'Comentario')] as Object[],
                        "Another user has updated this Comentario while you were editing")
                render(view: "edit", model: [ComentarioInstance: ComentarioInstance])
                return
            }
        }

        ComentarioInstance.properties = params

        if (!ComentarioInstance.save(flush: true)) {
            render(view: "edit", model: [ComentarioInstance: ComentarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'Comentario.label', default: 'Comentario'), ComentarioInstance.id])
        redirect(action: "show", id: ComentarioInstance.id)
    }
    @Secured(["ROLE_ADMIN"])
    def delete(Long id) {
        def ComentarioInstance = Comentario.get(id)
        if (!ComentarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "list")
            return
        }

        try {
            ComentarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'Comentario.label', default: 'Comentario'), id])
            redirect(action: "show", id: id)
        }
    }
}
