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
    @objc dynamic var domain: String
    @objc dynamic var permalink: String
    @objc dynamic var selfText: String?
    @objc dynamic var subreddit: String
    @objc dynamic var subredditId: String
    @objc dynamic var title: String
    @objc dynamic var url: String
    
    @objc dynamic var numberOfComments: Int
    @objc dynamic var score: Int
    
    @objc dynamic var isHidden: Bool
    @objc dynamic var isSelfPost: Bool
    @objc dynamic var isLiked: Bool
    @objc dynamic var isNSFW: Bool
    @objc dynamic var isSaved: Bool
    
    
    //MARK: Initialization
    init(author: String, domain: String, permalink: String, selfText: String?, subreddit: String, subredditId: String, title: String, url: String, numberOfComments: Int, score: Int, isHidden: Bool, isSelfPost: Bool, isLiked: Bool, isNSFW: Bool, isSaved: Bool) {
        
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
