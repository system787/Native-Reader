//
//  Comment.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/22/19.
//  Copyright © 2019 Vincent Hoang. All rights reserved.
//

import Foundation

struct Comment: Decodable {
    let id: String
    let name: String
    let kind: String
    
    let approved_by: String
    let author: String
    let author_flair_css_class: String
    let author_flair_text: String
    let banned_by: String
    let body: String
    let body_html: String
    let link_author: String
    let link_id: String
    let link_title: String
    let link_url: String
    let parent_id: String
    let subreddit: String
    let subreddit_id: String
    let distinguished: String
    
    let likes: Bool?
    let saved: Bool
    let score_hidden: Bool
    
    let gilded: Int
    let num_reports: Int
    let score: Int
    
    let edited: Double
    
    let replies: CommentListing?
    
    enum CommentKeys: String, CodingKey {
        case id
        case name
        case kind
        case approved_by
        case author
        case author_flair_css_class
        case author_flair_text
        case banned_by
        case body
        case body_html
        case link_author
        case link_id
        case link_title
        case link_url
        case parent_id
        case subreddit
        case subreddit_id
        case distinguished
        case likes
        case saved
        case score_hidden
        case gilded
        case num_reports
        case score
        case edited
        case replies
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CommentKeys.self)
        
        // String
        id = try values.decode(String.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        kind = try values.decode(String.self, forKey: .kind)
        approved_by = try values.decode(String.self, forKey: .approved_by)
        author = try values.decode(String.self, forKey: .author)
        author_flair_css_class = try values.decode(String.self, forKey: .author_flair_css_class)
        author_flair_text = try values.decode(String.self, forKey: .author_flair_text)
        banned_by = try values.decode(String.self, forKey: .banned_by)
        body = try values.decode(String.self, forKey: .body)
        body_html = try values.decode(String.self, forKey: .body_html)
        link_author = try values.decode(String.self, forKey: .link_author)
        link_id = try values.decode(String.self, forKey: .link_id)
        link_title = try values.decode(String.self, forKey: .link_title)
        link_url = try values.decode(String.self, forKey: .link_url)
        parent_id = try values.decode(String.self, forKey: .parent_id)
        subreddit = try values.decode(String.self, forKey: .subreddit)
        subreddit_id = try values.decode(String.self, forKey: .subreddit_id)
        distinguished = try values.decode(String.self, forKey: .distinguished)
        
        // Boolean
        likes = try values.decode(Bool.self, forKey: .likes)
        saved = try values.decode(Bool.self, forKey: .saved)
        score_hidden = try values.decode(Bool.self, forKey: .score_hidden)
        
        // Int
        gilded = try values.decode(Int.self, forKey: .gilded)
        num_reports = try values.decode(Int.self, forKey: .num_reports)
        score = try values.decode(Int.self, forKey: .score)
        
        // Double
        edited = try values.decode(Double.self, forKey: .edited)
        
        // Object
        if let replies = try? values.decode(CommentListing.self, forKey: .replies) {
            self.replies = replies
        } else {
            replies = nil
        }
    }
}
