//
//  ToDoItems.swift
//  MyToDoApp
//
//  Created by Cynthia Whitlatch on 2/5/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class ToDoItems: BaseClass, NSCoding {

    var itemDescription = String()
    var itemDate = NSDate()
   
    init(description:String, date:NSDate = NSDate()) {
        self.itemDescription = description
        self.itemDate = date
    }
    
//    MARK: NSCODING
    
    @objc required convenience init?(coder aDecoder: NSCoder) {
        guard let description = aDecoder.decodeObjectForKey("itemDescription") as? String else {fatalError("ERROR") }
        guard let date = aDecoder.decodeObjectForKey("itemDate") as? NSDate else {fatalError("ERROR")}
        self.init(description:description, date:date)
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.itemDescription, forKey: "itemDescription")
        aCoder.encodeObject(self.itemDate, forKey: "itemDate")
    }
}




















































































