//
//  User.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 12/02/2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var ProfileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Bubba", ProfileImageURL: "bubba", fullname: "Bubba de daggoe", bio: "Waf Waf Waf", email: "bubba@example.com"),
        .init(id: NSUUID().uuidString, username: "Guusbob", ProfileImageURL: "guusbob", fullname: "Guusbob de blemboesh", bio: "Lik Lik", email: "guusbob@example.com"),
        .init(id: NSUUID().uuidString, username: "Guus", ProfileImageURL: "guus", fullname: nil, bio: "Lik Lik", email: "guus@example.com"),
        .init(id: NSUUID().uuidString, username: "Suus", ProfileImageURL: "suus", fullname: "suus", bio: "Lik Lik", email: "suus@example.com")
    ]
}
