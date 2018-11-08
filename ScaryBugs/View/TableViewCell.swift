//
//  TableViewCell.swift
//  ScaryBugs
//
//  Created by Lubos Ilcik on 07/11/2018.
//  Copyright © 2018 Touch4It. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var bugImage: UIImage? {
        didSet {
            bugImageView.image = bugImage
        }
    }
    
    var bugTitle: String? {
        didSet {
            bugTitleLabel.text = bugTitle
        }
    }
    
    var bugSubtitle: String? {
        didSet {
            bugSubtitleLabel.text = bugSubtitle
        }
    }

    @IBOutlet private weak var bugImageView: UIImageView!
    @IBOutlet private weak var bugTitleLabel: UILabel!
    @IBOutlet private weak var bugSubtitleLabel: UILabel!
    
}
