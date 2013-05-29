package org.nest5

class Post {
    static belongsTo = [category: Category]
    static hasMany = [media: Media, comments: Comment]
    String title
    String tags
    Boolean published
    User author
    String content
    Date date
    String address







    static constraints = {

        category()
        title()
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
    }
}
