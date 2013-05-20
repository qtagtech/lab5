package org.nest5

class BlogController {

    def index() {

       /* def allPost = Post.findAll()
        def longi = allPost.size()
        def random = new Random()
        def max = 9
        def headerPost = []
        if(longi <= 9)
            headerPost = allPost
        else{
            for(def i = 0; i < 9; i++){
                def cualquiera = allPost.getAt(random.nextInt(longi + 1))
                headerPost += cualquiera
            }
        }

        def mercadeo = Category.findByAlias('mercadeo')?.posts?.sort {it.date}
        def tecnologia = Category.findByAlias('tecnologia')?.posts?.sort {it.date}
        def emprendimiento = Category.findByAlias('emprendimiento')?.posts?.sort {it.date}
        def noticias = Category.findByAlias('noticias')?.posts?.sort {it.date}
        def all = [mercadeo,tecnologia,emprendimiento,noticias]*.keySet().flatten().unique().collectEntries {
            [ (it): [mercadeo,tecnologia,emprendimiento,noticias]*.get( it ).findAll().sum() ]
        }
        println all
        all?.sort {it?.date}
        all?.take(20)


        println all
        [headerPosts: headerPost,mercadeo: mercadeo,noticias: noticias,tecnologia: tecnologia,emprendimiento:emprendimiento,all:all]*/

    }
}
