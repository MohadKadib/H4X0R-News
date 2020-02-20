//
//  PostData.swift
//  H4X0R News
//
//  Created by mohammed abdulla kadib on 2/10/20.
//  Copyright © 2020 mohammed abdulla kadib. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
