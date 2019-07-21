//
//  FruitTableViewCell.swift
//  potatotips-63-demo
//
//  Created by uhooi on 2019/07/21.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

import UIKit

final class FruitTableViewCell: UITableViewCell {

    // MARK: IBOutlet
    
    @IBOutlet private weak var fruitLabel: UILabel!
    
    // MARK: Internal Methods
    
    func setup(fruit: String) {
        self.fruitLabel.text = fruit
    }
    
}
