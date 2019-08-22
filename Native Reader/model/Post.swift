//
//  RedditThread.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/9/18.
//  Copyright © 2018 Vincent Hoang. All rights reserved.
//

import Foundation

struct Post: Decodable {
    
    let author: String
    let author_flair_css_class: String
    let author_flair_text: String
    let domain: String
    let permalink: String
    let selfText: String
    let selfText_html: String?
    let subreddit: String
    let subreddit_id: String
    let title: String
    let url: String
    let distinguished: String
    
    let link_fiar_css_class: String
    let link_flair_text: String
    
    let clicked: Bool
    let hidden: Bool
    let likes: Bool
    let locked: Bool
    let over_18: Bool
    let saved: Bool
    let sticked: Bool
    
    let num_comments: Int
    let score: Int
    
    let edited: Double
    
    
    //MARK: Implement after
    // media: Object
    // media_embed: Object
}
