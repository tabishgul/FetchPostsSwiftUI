//
//  PostsView.swift
//  FetchPostsSwiftUI
//
//  Created by Tabish on 3/21/21.
//

import SwiftUI

struct PostView: View {
    
    private let user: PostsModel
    
    init(user: PostsModel) {
        self.user = user
    }
    
    var body: some View {
        NavigationLink(destination: SinglePostView(title: user.title ?? "")) {
            VStack(alignment: .leading, spacing: 15) {
                Text(user.title ?? "")
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text(user.body ?? "")
                    .font(.system(size: 14))
            }
        }
    }
}

