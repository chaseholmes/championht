package com.cmt

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/shell"(view:'/grailsShell')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
