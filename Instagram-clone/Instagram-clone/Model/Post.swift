//
//  Post.swift
//  Instagram-clone
//
//  Created by Sandesh Boedhoe on 13/02/2024.
//

import Foundation

struct Post: Hashable, Codable, Identifiable {
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "Post 1 - bubba", likes: 10, imageURL: "bubba", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "Post 2 - guusbob", likes: 34, imageURL: "guusbob", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "Post 3 - guus", likes: 10, imageURL: "guus", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "Post 4 - suus", likes: 10, imageURL: "suus", timestamp: Date(), user: User.MOCK_USERS[3])
    ]
}
