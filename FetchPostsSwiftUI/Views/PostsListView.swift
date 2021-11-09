//
//  PostsListView.swift
//  FetchPostsSwiftUI
//
//  Created by Tabish on 3/21/21.
//

import SwiftUI

struct PostsListView: View {
    
    @ObservedObject var postsViewModel = PostsViewModel()
    
    var body: some View {
        NavigationView {
            // List used to display data in vertical format
            List(self.postsViewModel.posts, id: \.self) {
                // Use model in viewModel to render data in List View
                PostView(user: $0)
            }
            .navigationBarTitle("Posts")
                .onAppear {
                    // When View Appears Fetch Data
                    self.postsViewModel.fetchPosts()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostsListView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
