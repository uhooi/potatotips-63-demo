//
//  ViewController.swift
//  potatotips-63-demo
//
//  Created by uhooi on 2019/07/21.
//  Copyright © 2019 THE Uhooi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    @IBAction func didTapAppleButton(_ sender: UIButton) {
        addFruits(fruit: "りんご")
    }
    
    @IBAction func didTapOrangeButton(_ sender: UIButton) {
        addFruits(fruit: "みかん")
    }
    
    func addFruits(fruit: String) {
        self.fruits.append(fruit)
    }
    
    var fruits: [String] = [] {
        didSet {
            self.fruitsTableView.reloadData()
        }
    }
    
    @IBOutlet weak var fruitsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.fruitsTableView.delegate = self
        self.fruitsTableView.dataSource = self
//        self.fruitsTableView.register(UINib(nibName:  "FruitTableViewCell", bundle: nil), forCellReuseIdentifier: "FruitTableViewCell")
    }
    
    @IBAction func didTapBananaButton(_ sender: UIButton) {
        addFruits(fruit: "ばなな")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.fruitsTableView.dequeueReusableCell(withIdentifier: "FruitTableViewCell", for: indexPath) as! FruitTableViewCell
        let fruit = fruits[indexPath.row]
        cell.fruitLabel.text = fruit
        return cell
    }

}
