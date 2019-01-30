//
//  Category.swift
//  Test
//
//  Created by Alex Mendes on 1/28/19.
//  Copyright © 2019 Alex Mendes. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @objc dynamic var name : String = ""
    
    let items = List<Item>()
    
}
