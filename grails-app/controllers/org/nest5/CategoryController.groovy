package org.nest5

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.security.access.annotation.Secured

class CategoryController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
    @Secured(["ROLE_ADMIN"])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [categoryInstanceList: Category.list(params), categoryInstanceTotal: Category.count()]
    }
    @Secured(["ROLE_ADMIN"])
    def create() {
        [categoryInstance: new Category(params)]
    }
    @Secured(["ROLE_ADMIN"])
    def save() {
        def categoryInstance = new Category(params)
        if (!categoryInstance.save(flush: true)) {
            render(view: "create", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }
    @Secured(["ROLE_ADMIN"])
    def show(Long id) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        [categoryInstance: categoryInstance]
    }
    @Secured(["ROLE_ADMIN"])
    def edit(Long id) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        [categoryInstance: categoryInstance]
    }
    @Secured(["ROLE_ADMIN"])
    def update(Long id, Long version) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (categoryInstance.version > version) {
                categoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'category.label', default: 'Category')] as Object[],
                          "Another user has updated this Category while you were editing")
                render(view: "edit", model: [categoryInstance: categoryInstance])
                return
            }
        }

        categoryInstance.properties = params

        if (!categoryInstance.save(flush: true)) {
            render(view: "edit", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }
    @Secured(["ROLE_ADMIN"])
    def delete(Long id) {
        def categoryInstance = Category.get(id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
            return
        }

        try {
            categoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'category.label', default: 'Category'), id])
            redirect(action: "show", id: id)
        }
    }

    def articles(String id){
        def cat = Category.findByAlias(params.id)

        def all = cat?.posts
        def offset =  params.offset ? params.offset as Integer : 0
        def i = 0
        def articles =  []
        while(i < Math.min(params.max ? params.max as Integer : 10, 100))
        {
          if(!all.toList()[offset])
              break

          articles += all.toList()[offset]
            offset++
            i++
        }
        def mercadeo = Category.findByAlias('mercadeo')?.posts?.sort {it.date}
        def tecnologia = Category.findByAlias('tecnologia')?.posts?.sort {it.date}
        def emprendimiento = Category.findByAlias('emprendimiento')?.posts?.sort {it.date}
        def noticias = Category.findByAlias('noticias')?.posts?.sort {it.date}
        [articles: articles, articlesTotal: all?.size(),category: cat,mercadeo: mercadeo, noticias: noticias, emprendimiento: emprendimiento, tecnologia: tecnologia]
    }
}
