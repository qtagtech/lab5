package org.nest5

class User extends SecUser {

    static hasMany = [posts: Post]
    String email
    String position
    String bio
    String name



    static constraints = {
    }

    static mapping = {
        bio type: 'text'

    }

    String toString(){
        name
    }
}
