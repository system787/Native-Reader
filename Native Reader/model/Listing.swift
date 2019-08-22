//
//  Listing.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/22/19.
//  Copyright © 2019 Vincent Hoang. All rights reserved.
//

import Foundation

struct Listing: Decodable {
    let data: ListingData
    
    struct ListingData: Decodable {
        let children: [PostData]
        
        struct PostData: Decodable {
            let data: Post
        }
    }
}

struct CommentListing: Decodable {
    let data: CommentListingData
    
    struct CommentListingData: Decodable {
        let children: [CommentData]
        
        struct CommentData: Decodable {
            let data: Comment
        }
    }
}
