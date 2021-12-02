//
//  Quote.swift
//  AsyncAwaitWithMVVM
//
//  Created by Pradeep's Macbook on 02/12/21.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}


extension Quote {
    
    static let dummyData: [Quote] = [
        
        Quote.init(anime: "Anime 1", character: "Character 1", quote: "Random Quote 1"),
        Quote.init(anime: "Anime 2", character: "Character 2", quote: "Random Quote 2"),
        Quote.init(anime: "Anime 3", character: "Character 3", quote: "Random Quote 3"),
        Quote.init(anime: "Anime 4", character: "Character 4", quote: "Random Quote 4"),
        Quote.init(anime: "Anime 5", character: "Character 5", quote: "Random Quote 5"),
    ]
}
