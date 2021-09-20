//
//  File.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/20/21.
//

import UIKit

import UIKit

/// Отдельная машина
struct Car {
    var name: String
    var cost: Float
    var image: UIImage
}

/// Группа машин
struct Group {
    var name: String
    var products: [Car]
   
}

/// Группа групп. На экране DetailViewController отображается именно она
struct GroupCollection {
    var name: String
    var groups: [Group]
    var image: UIImage
    
}

struct AutoGallery {
    var name: String
    var groupsCollections: [GroupCollection]
    
    init() {
        
        
        
    }
}






