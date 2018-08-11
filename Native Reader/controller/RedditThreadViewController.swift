//
//  RedditThreadViewController.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/9/18.
//  Copyright © 2018 Vincent Hoang. All rights reserved.
//

import AppKit
import os.log

class RedditThreadViewController: NSViewController {
    
    //MARK: Properties
    @IBOutlet var arrayController: NSArrayController!
    
    @objc dynamic var threads = [RedditThread]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        generatePlaceholderThreads()
    }
    
    //MARK: NSTableViewDelegate
    
    //MARK: Private Methods
    private func generatePlaceholderThreads() {
        os_log("Attemping to generate placeholder threads")
        
        let sampleThread = RedditThread(author: "Author", domain: "Domain", permalink: "Permalink", selfText: "selfText", subreddit: "Subreddit", subredditId: "SubredditID", title: "Thread Title", url: "url", numberOfComments: 1254, score: 54252, isHidden: false, isSelfPost: true, isLiked: true, isNSFW: false, isSaved: false)
        
        for _ in 1...5 {
            threads.append(sampleThread)
            
        }
        
        print("\(threads.count) threads generated and added to threads array")
    }
    
}
