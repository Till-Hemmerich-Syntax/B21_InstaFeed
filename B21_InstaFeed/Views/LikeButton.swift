//
//  LikeButton.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import SwiftUI

struct LikeButton: View {
    @Binding var post : Post
    var body: some View {
        HStack{
            Button(action: {
                post.isLiked.toggle()
                post.likeCount += post.isLiked ? 1 : -1
            }){
                HStack{
                    Image(systemName: fillOrNotFill())
                        .foregroundColor(post.isLiked ? .red : .gray)
                    Text("\(post.likeCount)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
    func fillOrNotFill()->String{
        if(post.isLiked){
            return "heart.fill"
        }
        else {
            return "heart"
        }
    }
}

#Preview {
    LikeButton(post: .constant(samplePosts[0]))
}
