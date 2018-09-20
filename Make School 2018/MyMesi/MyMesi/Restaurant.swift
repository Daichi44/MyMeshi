//
//  Restaurant.swift
//  MyMesi
//
//  Created by Owner on 2018/09/10.
//  Copyright © 2018年 Owner. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Restaurant {
    let name: String
    let address: String
    let image: String
    let category: String
    let tel: String
    let holiday: String
    
    init(json: JSON) {
        self.name = json["name"].stringValue
        self.category = json["category"].stringValue
        self.address = json["address"].stringValue
        self.image = json["image_url"]["shop_image1"].stringValue
        self.tel = json["tel"].stringValue
        self.holiday = json["holiday"].stringValue
    }
}
