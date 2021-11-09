//
//  PostsModel.swift
//  FetchPostsSwiftUI
//
//  Created by Tabish on 3/21/21.
//

import Foundation

struct PostsModel: Hashable {
    
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    init(json: [String: Any]) {
        if json.isEmpty {
            return
        }
        
        userId = json["userId"] as? Int
        id = json["id"] as? Int
        title = json["title"] as? String
        body = json["body"] as? String
    }
}
