package org.nest5

class Post {
    static belongsTo = [category: Category]
    static hasMany = [media: Media, comentarios: Comentario]
    String title
    String tags
    Boolean published
    User author
    String content
    Date date
    String address
    String intro







    static constraints = {

        category()
        title()
        intro()
        content()
        published()
        tags()
        author()
        date()

    }

    String toString(){
        title
    }
    static mapping = {
        content type: 'text'
        sort date: "desc"
        intro type: 'text'
    }
}
