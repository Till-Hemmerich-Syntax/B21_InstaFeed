//
//  PostRow.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import SwiftUI

struct PostRow: View {
    var post : Post
    var body: some View {
        VStack(alignment: .leading){
            Text(post.userName)
                .font(.headline)
                .padding(.bottom,2)
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            Text(post.caption)
                .padding(.vertical,6)
        }
        .padding()
    }
}

#Preview {
    PostRow(post: samplePosts[0])
}
