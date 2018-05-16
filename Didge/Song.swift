//
//  Song.swift
//  Didge
//
//  Created by Nicholas Loyd on 5/4/18.
//  Copyright © 2018 Nicholas Loyd. All rights reserved.
//

import Foundation
class Song: Comparable{
    static func <(lhs: Song, rhs: Song) -> Bool {
        return lhs.score < rhs.score
    }
    
    static func ==(lhs: Song, rhs: Song) -> Bool {
        return lhs.title == rhs.title
    }
    
    var title : String
    var artist : String
    var score : Int = 0
    var voteStatus : Vote
    
    init(_ title: String, by artist: String) {
        self.title = title
        self.artist = artist
        self.score = 1
        self.voteStatus = .up
    }
    
    
}

enum Vote{
    case up
    case down
    case neutral
}
