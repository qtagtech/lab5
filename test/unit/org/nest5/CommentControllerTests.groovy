package org.nest5



import org.junit.*
import grails.test.mixin.*

@TestFor(ComentarioController)
@Mock(Comentario)
class ComentarioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/Comentario/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ComentarioInstanceList.size() == 0
        assert model.ComentarioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ComentarioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ComentarioInstance != null
        assert view == '/Comentario/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/Comentario/show/1'
        assert controller.flash.message != null
        assert Comentario.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/Comentario/list'

        populateValidParams(params)
        def Comentario = new Comentario(params)

        assert Comentario.save() != null

        params.id = Comentario.id

        def model = controller.show()

        assert model.ComentarioInstance == Comentario
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/Comentario/list'

        populateValidParams(params)
        def Comentario = new Comentario(params)

        assert Comentario.save() != null

        params.id = Comentario.id

        def model = controller.edit()

        assert model.ComentarioInstance == Comentario
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/Comentario/list'

        response.reset()

        populateValidParams(params)
        def Comentario = new Comentario(params)

        assert Comentario.save() != null

        // test invalid parameters in update
        params.id = Comentario.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/Comentario/edit"
        assert model.ComentarioInstance != null

        Comentario.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/Comentario/show/$Comentario.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        Comentario.clearErrors()

        populateValidParams(params)
        params.id = Comentario.id
        params.version = -1
        controller.update()

        assert view == "/Comentario/edit"
        assert model.ComentarioInstance != null
        assert model.ComentarioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/Comentario/list'

        response.reset()

        populateValidParams(params)
        def Comentario = new Comentario(params)

        assert Comentario.save() != null
        assert Comentario.count() == 1

        params.id = Comentario.id

        controller.delete()

        assert Comentario.count() == 0
        assert Comentario.get(Comentario.id) == null
        assert response.redirectedUrl == '/Comentario/list'
    }
}
