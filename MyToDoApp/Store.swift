//
//  SaveItems.swift
//  MyToDoApp
//
//  Created by Cynthia Whitlatch on 2/5/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import Foundation

class Store: ObjectsProtocol {
    
    static let shared = Store()
    
    private init() {
        if let data = NSData(contentsOfURL:NSURL.archiveURL()), storedObjects = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [ToDoItems] {
            self.objects = storedObjects
        }
    }
    typealias Object = ToDoItems
    var objects = [Object]()
    
}
