//
//  User.swift
//  FriendFace
//
//  Created by Héctor Manuel Sandoval Landázuri on 09/11/23.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable {
    var id: String
    var name: String
    var age: Int
    var company: String
    var isActive: Bool
    var friends: [Friend]
    
    var checkIsActive: String {
        return self.isActive ? "🟢" :"🔴"
    }
}


struct Friend: Codable, Identifiable {
    var id: String
    var name: String
}
