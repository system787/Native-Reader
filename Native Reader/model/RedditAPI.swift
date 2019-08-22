//
//  RedditAPI.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/22/19.
//  Copyright © 2019 Vincent Hoang. All rights reserved.
//

import Foundation

struct RedditAPI {
    static func getSubredditURL(_ subreddit: String, _ sorting: Sorting) -> String {
        return "https://www.reddit.com/r/\(subreddit)/\(sorting.rawValue).json"
    }
    
    static func getPostURL(_ subreddit: String, _ id: String) -> String {
        return "https://www.reddit.com/r/\(subreddit)/\(id).json"
    }
}
