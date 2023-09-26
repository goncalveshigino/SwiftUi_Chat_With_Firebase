//
//  User.swift
//  SwiftMessagerClone
//
//  Created by Goncalves Higino on 20/09/23.
//

import Foundation
import FirebaseFirestoreSwift


struct User: Codable, Identifiable,Hashable {
    @DocumentID var uid: String?
    let fulName: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
}

extension User {
    static let MOCK_USER = User(fulName: "Bruce Wayne", email: "batman@gmail.com", profileImageUrl: "batman")
}
