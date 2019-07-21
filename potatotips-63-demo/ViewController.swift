//
//  ViewController.swift
//  potatotips-63-demo
//
//  Created by uhooi on 2019/07/21.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, UITableViewDataSource {
    
    // MARK: Properties
    
    private var fruits: [String] = [] {
        didSet {
            self.fruitsTableView.reloadData()
        }
    }
    
    // MARK: IBOutlet
    
    @IBOutlet private weak var fruitsTableView: UITableView!
    
    // MARK: IBAction
    
    @IBAction private func didTapAppleButton(_ sender: UIButton) {
        addFruits(fruit: "りんご")
    }
    
    @IBAction private func didTapOrangeButton(_ sender: UIButton) {
        addFruits(fruit: "みかん")
    }
    
    @IBAction private func didTapBananaButton(_ sender: UIButton) {
        addFruits(fruit: "ばなな")
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.fruitsTableView.dequeueReusableCell(withIdentifier: "FruitTableViewCell", for: indexPath) as! FruitTableViewCell
        cell.setup(fruit: fruits[indexPath.row])
        return cell
    }

    // MARK: Private Methods
    
    private func addFruits(fruit: String) {
        self.fruits.append(fruit)
    }
    
}
