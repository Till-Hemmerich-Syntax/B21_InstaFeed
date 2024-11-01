//
//  FeedView.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import SwiftUI

struct FeedView: View {
    @State var posts = samplePosts
    var body: some View {
        NavigationStack{
            List($posts){ $post in
                NavigationLink(value: post) {
                    PostRow(post: post)
                }
                LikeButton(post: $post)
            }
            .navigationDestination(for: Post.self) { post in
                PostDetailView(post: post)
            }
        }
    }
}

// TabView

#Preview {
    FeedView()
}
