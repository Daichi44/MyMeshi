//
//  evaluation.swift
//  MyMesi
//
//  Created by Owner on 2018/09/07.
//  Copyright © 2018年 Owner. All rights reserved.
//

import UIKit

class evaluation: UIViewController {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantExpense: UITextField!
    @IBOutlet weak var wannaComeAgain: UISwitch!
    @IBOutlet weak var areaName: UITextField!
    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var restaurantEvaluation: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func wannaComeAgain(_ sender: UISwitch) {
        if sender.isOn {
            print("wanna come again")
        } else {
            print("enough")
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
