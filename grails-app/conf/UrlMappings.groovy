class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: 'blog',action:"index")
        "/post/details/$id/$header"(controller: 'post',action: 'details')
		"500"(view:'/error')
        "/about"(controller: 'blog',action: 'about')
	}
}
