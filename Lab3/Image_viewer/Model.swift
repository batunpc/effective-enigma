//
//  Model.swift
//  Image_viewer
//
//  Created by Batuhan Ipci on 2022-07-11.
//

import Foundation

class Model
{
//
//    init(name:String, URL:String) {
//        self.name = name
//        self.URL = URL
//    }
    //MARK: Default property values
//    lazy var listofImages = {
//        return [(name: "Sunrise", URL: "https://images.freeimages.com/images/large-previews/1c9/maine-at-4-45-am-1370871.jpg"),
//                (name: "Saturn", URL: "https://images.freeimages.com/images/large-previews/a76/saturn-hd-planet-1152093.jpg"),
//                (name: "Sunset", URL: "https://images.freeimages.com/images/large-previews/1c9/maine-at-4-45-am-1370871.jpg")]
//    }()
    //MARK: Dictionary
    lazy var listOfImages: [String : String] = [
        "Sunrise": "https://images.freeimages.com/images/large-previews/1c9/maine-at-4-45-am-1370871.jpg",
        "Saturn": "https://images.freeimages.com/images/large-previews/a76/saturn-hd-planet-1152093.jpg",
        "Sunset": "https://images.freeimages.com/images/large-previews/1c9/maine-at-4-45-am-1370871.jpg"
    ]
}
