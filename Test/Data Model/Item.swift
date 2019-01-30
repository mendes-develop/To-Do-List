//
//  Item.swift
//  Test
//
//  Created by Alex Mendes on 1/28/19.
//  Copyright © 2019 Alex Mendes. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
