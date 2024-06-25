//
//  DetailUserView.swift
//  FriendFace
//
//  Created by Héctor Manuel Sandoval Landázuri on 09/11/23.
//

import SwiftUI

struct DetailUserView: View {
    let user: CachedUser
    
    var body: some View {
        List {
            Section {
                Text("Registered: \(user.wrappedFormattedDate)")
                Text("Age: \(user.age)")
                Text("Email: \(user.wrappedEmail)")
                Text("Address: \(user.wrappedAddress)")
                Text("Works for: \(user.wrappedCompany)")
            } header: {
                Text("Basic Info")
            }
            
            Section {
                Text(user.wrappedAbout)
            } header: {
                Text("About")
            }
            
            Section {
                ForEach(user.friendsArray) { friend in
                    Text(friend.wrappedName)
                }
            } header: {
                Text("Friends")
            }
        }
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}


//struct DetailUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailUserView(user: User(id: "", isActive: true, name: "Name", age: 30, company: "COM",  email: "hola@cafemarino.com", address: "first Street", about: "Teacher", registered: "2024-05-05", tags: ["1"],  friends: [Friend]()) )
//    }
//}
