//
//  User.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/25/23.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
