//
//  ObjectsProtocol.swift
//  MyToDoApp
//
//  Created by Cynthia Whitlatch on 2/5/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import Foundation

protocol ObjectsProtocol : class {
    typealias Object: BaseClass, NSCoding
    
    var objects: [Object] { get set }
    
    func add(object:Object)
    func objectForIndexPath(indexPath:NSIndexPath) -> Object
    func removeObject(object:Object)
    func removeObjectAtIndex(indexPath:NSIndexPath)
    func count() -> Int
    func save(file:String)
}

extension ObjectsProtocol {
    
    func add(object:Object) {
        self.objects.append(object)
        
    }
    
    func objectForIndexPath(indexPath:NSIndexPath) -> Object {
        return self.objects[indexPath.row]
    }
    
    func removeObject(object:Object) {
        self.objects.removeAll()
    }
    
    func removeObjectAtIndex(indexPath:NSIndexPath) -> Object {
        return self.objects.removeAtIndex(indexPath.row)
    }
    
    func count() -> Int {
        return self.objects.count
    }
    
    func save(file:String) {
        NSKeyedArchiver.archiveRootObject(self.objects, toFile: file)
    }

    
}