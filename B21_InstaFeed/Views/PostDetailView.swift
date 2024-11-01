//
//  PostDetailView.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import SwiftUI

struct PostDetailView: View {
    @State var post : Post
    var body: some View {
        VStack{
            HStack{
                Text(post.userName)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                LikeButton(post: $post)
            }
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 300)
            Text(post.caption)
                .font(.body)
                .padding(.top)
            Spacer()
        }
        .padding()
        .navigationTitle("Post")
    }
}

#Preview {
    NavigationStack{
        PostDetailView(post: samplePosts.first!)
    }
}
