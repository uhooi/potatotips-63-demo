//
//  FruitTableViewCell.swift
//  potatotips-63-demo
//
//  Created by uhooi on 2019/07/21.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var fruitLabel: UILabel!
    
}
