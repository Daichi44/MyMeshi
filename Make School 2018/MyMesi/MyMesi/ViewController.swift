//
//  ViewController.swift
//  MyMesi
//
//  Created by Owner on 2018/09/07.
//  Copyright © 2018年 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerButtonTapped(_ sender: UIButton) {
        print("register button tapped")
    }
    @IBAction func listButtonTapped(_ sender: UIButton) {
        print("list button tapped")
    }
    
    
}

