//
//  PostsViewModel.swift
//  FetchPostsSwiftUI
//
//  Created by Tabish on 3/21/21.
//

import SwiftUI

class PostsViewModel: ObservableObject {
    
    private let url = "https://jsonplaceholder.typicode.com/posts"
    
    @Published var posts: [PostsModel] = []
    
    func fetchPosts(){
        guard let url = URL(string: url) else {return}
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if(error != nil){
                print(error?.localizedDescription as Any)
            } else{
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                    let usersArr = json as? [[String:Any]]
                    if usersArr != nil{
                        for user in usersArr! {
                            // When ever the model is updated the view will be updated automatically
                            // When ever the ui will be updated use main thread
                            DispatchQueue.main.async {
                                self.posts.append(PostsModel(json: user))
                            }
                        }
                    }
                }catch let err{
                    //Json serialization failed!
                    print(err.localizedDescription)
                }
                
            }
        }.resume()
    }
}
