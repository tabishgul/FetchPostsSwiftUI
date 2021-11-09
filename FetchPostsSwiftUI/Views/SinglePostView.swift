//
//  SinglePostView.swift
//  FetchPostsSwiftUI
//
//  Created by Tabish on 4/24/21.
//

import SwiftUI

struct SinglePostView: View {
    let title: String
    
    init(title: String) {
        self.title = title
    }

    var body: some View {
        Text("Title: \(title)")
            .font(.system(size: 18)).fontWeight(.semibold)
    }
}
