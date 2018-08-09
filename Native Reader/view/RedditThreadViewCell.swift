//
//  RedditThreadViewCell.swift
//  Native Reader
//
//  Created by Vincent Hoang on 8/9/18.
//  Copyright © 2018 Vincent Hoang. All rights reserved.
//

import AppKit

class RedditThreadViewCell: NSTableCellView {
    //MARK: Properties
    @IBOutlet weak var threadImageView: NSImageView!
    @IBOutlet weak var postTitleLabel: NSTextField!
    @IBOutlet weak var subredditLabel: NSTextField!
    @IBOutlet weak var authorLabel: NSTextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
