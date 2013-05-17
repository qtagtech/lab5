package org.nest5

class Archivo {

    static hasMany = [media: Media]
    String name
    String tipo
    String ruta
    String description


    static constraints = {
    }
    static mapping = {
        description type: 'text'
    }
}
