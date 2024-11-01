//
//  Post.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import Foundation

struct Post: Identifiable,Hashable{
    
    let id = UUID()
    let userName: String
    let imageName: String
    let caption: String
    var likeCount: Int
    var isLiked: Bool
    
}

var samplePosts = [
    Post(userName: "jane_doe", imageName: "image1", caption: "Exploring the mountains! 🏔️", likeCount: 100, isLiked: false),
    Post(userName: "john_doe", imageName: "image2", caption: "Sunny days at the beach ☀️", likeCount: 85, isLiked: false),
    Post(userName: "alice_wonder", imageName: "image3", caption: "Loving the city lights 🌆", likeCount: 120, isLiked: false)
]
