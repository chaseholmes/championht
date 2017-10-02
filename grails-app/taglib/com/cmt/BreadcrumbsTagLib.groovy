package com.cmt

class BreadcrumbsTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def trail = { attrs, body ->
        out << '${controllerName}'
    }    
}
