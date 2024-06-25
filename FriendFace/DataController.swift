//
//  DataController.swift
//  FriendFace
//
//  Created by Héctor Manuel Sandoval Landázuri on 25/06/24.
//

import Foundation

import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FriendFace")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading data \(error.localizedDescription)")
            }
        }
    }
}
