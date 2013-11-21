package org.nest5

class Comment {
    static belongsTo = [post: Post]

    String email
    Date date
    String alias
    Integer points = 0
    String content


    static constraints = {
    }

    static mapping = {
        content type: 'text'
        sort date: "desc"
    }
}
