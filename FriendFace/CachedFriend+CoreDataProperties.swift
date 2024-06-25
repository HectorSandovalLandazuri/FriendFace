//
//  CachedFriend+CoreDataProperties.swift
//  FriendFace
//
//  Created by Héctor Manuel Sandoval Landázuri on 25/06/24.
//
//

import Foundation
import CoreData


extension CachedFriend: Identifiable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedFriend> {
        return NSFetchRequest<CachedFriend>(entityName: "CachedFriend")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var user: CachedUser?
    
    var wrappedName: String {
        name ?? "Unknown"
    }
}
