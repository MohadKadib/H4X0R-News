//
//  ContentView.swift
//  H4X0R News
//
//  Created by mohammed abdulla kadib on 2/10/20.
//  Copyright © 2020 mohammed abdulla kadib. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjur"),
//    Post(id: "3", title: "Hola")
//]
