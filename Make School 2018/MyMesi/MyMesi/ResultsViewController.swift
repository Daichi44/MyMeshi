//
//  ResultsViewController.swift
//  MyMesi
//
//  Created by Owner on 2018/09/11.
//  Copyright © 2018年 Owner. All rights reserved.
//

import UIKit
import AlamofireImage

class ResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var results = [Restaurant]()
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell") as! ResultTableViewCell
        
        let result = results[indexPath.row]
        
        if let url = URL(string: result.image) {
            cell.restrauntImageView.af_setImage(withURL: url)
        }
        
        cell.nameLabel.text = result.name
        cell.catLabel.text = result.category
        cell.addLabel.text = result.address
        
        return cell
    }
    
}

