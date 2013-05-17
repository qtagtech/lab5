package org.nest5

class Category {
    static hasMany = [posts: Post]
    String name
    String alias
    String description



    static constraints = {

        name()
        description()
    }

    static mapping = {
        description type: 'text'
    }

    String toString(){
        name
    }
}
