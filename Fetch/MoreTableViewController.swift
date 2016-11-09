//
//  MoreTableViewController.swift
//  Fetch
//
//  Created by Stephen Radford on 05/03/2016.
//  Copyright © 2016 Cocoon Development Ltd. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController {

    @IBOutlet weak var downloadBadge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadBadge.layer.masksToBounds = true
        downloadBadge.layer.cornerRadius = 13
        downloadBadge.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let count = Downloader.sharedInstance.queue.count
        if count > 0 {
            downloadBadge.text = String(count)
            downloadBadge.hidden = false
        } else {
            downloadBadge.hidden = true
        }
    }
    
}
