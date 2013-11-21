package org.nest5

class Media {
    static belongsTo = [post: Post, file: Archivo]
    Boolean isMain
    static constraints = {
    }
}
