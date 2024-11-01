//
//  HomeView.swift
//  B21_InstaFeed
//
//  Created by Till Hemmerich on 01.11.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Label("FEED",systemImage: "message")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
    }
}

#Preview {
    HomeView()
}
