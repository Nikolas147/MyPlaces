//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Aleksey on 27/09/2019.
//  Copyright © 2019 Aleksey. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
             realm.delete(place)
        }
    }
}

