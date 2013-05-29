package org.nest5

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

class PostController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
    @Secured(["ROLE_ADMIN"])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [postInstanceList: Post.list(params), postInstanceTotal: Post.count()]
    }
    @Secured(["ROLE_ADMIN"])
    def create() {
        [postInstance: new Post(params)]
    }

    @Secured(["ROLE_ADMIN"])
    def save() {
        def postInstance = new Post()
        postInstance.properties = params

        postInstance.author = springSecurityService.currentUser
        def original = params.title
        def minus = original.toLowerCase()
        minus = minus.replaceAll( /([àáâãäå])/, 'a' )
        minus = minus.replaceAll( /([èéêë])/, 'e' )
        minus = minus.replaceAll( /([ìíîï])/, 'i' )
        minus = minus.replaceAll( /([òóôõö])/, 'o' )
        minus = minus.replaceAll( /([ùúûü])/, 'u' )
        minus = minus.replaceAll( /([ñ])/, 'n' )
        minus = minus.replaceAll( /([ýÿ])/, 'y' )
        minus = minus.replaceAll( /([ç])/, 'c' )
        minus = minus.replaceAll( /([^a-zA-Z0-9\ ])/, '_' )
        minus = minus.replaceAll( /([\ ])/, '-' )
        postInstance.address = minus
        if (!postInstance.save(flush: true)) {
            render(view: "create", model: [postInstance: postInstance])
            return
        }
        def ids = params.archivos
        def valores = ids.split("_")
        println(valores)
        for(int i = 0; i < valores.size(); i++)
        {
            def iden = valores[i] as Long
            println(iden)
            def archivo = Archivo.findById(iden)
            println(archivo)
            if(archivo)
            {
                def media = new Media()
                media.post = postInstance
                media.file = archivo
                media.isMain = true
                if(!media.save(flush: true))
                {
                    println media.errors.allErrors
                    /*render(view: "create", model: [planInstance: planInstance],user: springSecurityService.currentUser,editing: false)
                    return*/
                }
            }
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'post.label', default: 'Post'), postInstance.id])
        redirect(action: "show", id: postInstance.id)
    }
    @Secured(["ROLE_ADMIN"])
    def show(Long id) {
        def postInstance = Post.get(id)
        if (!postInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
            return
        }

        [postInstance: postInstance]
    }


    @Secured(["ROLE_ADMIN"])
    def edit(Long id) {
        def postInstance = Post.get(id)
        if (!postInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
            return
        }

        [postInstance: postInstance]
    }
    @Secured(["ROLE_ADMIN"])
    def update(Long id, Long version) {
        def postInstance = Post.get(id)
        if (!postInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (postInstance.version > version) {
                postInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'post.label', default: 'Post')] as Object[],
                        "Another user has updated this Post while you were editing")
                render(view: "edit", model: [postInstance: postInstance])
                return
            }
        }

        postInstance.properties = params

        if (!postInstance.save(flush: true)) {
            render(view: "edit", model: [postInstance: postInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'post.label', default: 'Post'), postInstance.id])
        redirect(action: "show", id: postInstance.id)
    }
    @Secured(["ROLE_ADMIN"])
    def delete(Long id) {
        def postInstance = Post.get(id)
        if (!postInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
            return
        }

        try {
            postInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "show", id: id)
        }
    }

    def details(Long id){
        def postInstance = Post.get(id)
        if (!postInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
            redirect(action: "list")
            return
        }
         def tags = postInstance.tags.split(",")
        def mercadeo = Category.findByAlias('mercadeo')?.posts?.sort {it.date}
        def tecnologia = Category.findByAlias('tecnologia')?.posts?.sort {it.date}
        def emprendimiento = Category.findByAlias('emprendimiento')?.posts?.sort {it.date}
        def noticias = Category.findByAlias('noticias')?.posts?.sort {it.date}
        [postInstance: postInstance,tags: tags, mercadeo: mercadeo, noticias: noticias, emprendimiento: emprendimiento, tecnologia: tecnologia]
    }

    def testString(){
        def original = params.value
        def minus = original.toLowerCase()
         minus = minus.replaceAll( /([àáâãäå])/, 'a' )
         minus = minus.replaceAll( /([èéêë])/, 'e' )
         minus = minus.replaceAll( /([ìíîï])/, 'i' )
         minus = minus.replaceAll( /([òóôõö])/, 'o' )
         minus = minus.replaceAll( /([ùúûü])/, 'u' )
         minus = minus.replaceAll( /([ñ])/, 'n' )
         minus = minus.replaceAll( /([ýÿ])/, 'y' )
         minus = minus.replaceAll( /([ç])/, 'c' )
         minus = minus.replaceAll( /([^a-zA-Z0-9\ ])/, '_' )
         minus = minus.replaceAll( /([\ ])/, '-' )
        render minus
        return
    }
}
