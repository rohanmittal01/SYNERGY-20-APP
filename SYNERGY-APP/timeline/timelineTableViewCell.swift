//
//  timelineTableViewCell.swift
//  SYNERGY-APP
//
//  Created by Vandana Mittal on 2/5/20.
//  Copyright © 2020 Rohan Mittal. All rights reserved.
//

import UIKit

class timelineTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
