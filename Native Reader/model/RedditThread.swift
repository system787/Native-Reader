//
//  RedditThread.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/9/18.
//  Copyright © 2018 Vincent Hoang. All rights reserved.
//

import Foundation

class RedditThread : NSObject {
    //MARK: Properties
    @objc dynamic var author: String
    var domain: String
    var permalink: String
    var selfText: String?
    @objc dynamic var subreddit: String
    var subredditId: String
    @objc dynamic var title: String
    var url: String
    
    var numberOfComments: Int
    var score: Int
    
    var isHidden: Bool
    var isSelfPost: Bool
    var isLiked: Bool?
    var isNSFW: Bool
    var isSaved: Bool
    
    
    //MARK: Initialization
    init(author: String, domain: String, permalink: String, selfText: String?, subreddit: String, subredditId: String, title: String, url: String, numberOfComments: Int, score: Int, isHidden: Bool, isSelfPost: Bool, isLiked: Bool?, isNSFW: Bool, isSaved: Bool) {
        
        self.author = author
        self.domain = domain
        self.permalink = permalink
        self.selfText = selfText
        self.subreddit = subreddit
        self.subredditId = subredditId
        self.title = title
        self.url = url
        self.numberOfComments = numberOfComments
        self.score = score
        self.isHidden = isHidden
        self.isSelfPost = isSelfPost
        self.isLiked = isLiked
        self.isNSFW = isNSFW
        self.isSaved = isSaved
    }
}
