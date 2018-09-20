//
//  searchForRestaurant.swift
//  MyMesi
//
//  Created by Owner on 2018/09/07.
//  Copyright © 2018年 Owner. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import CoreLocation

class searchForRestaurant: UIViewController, CLLocationManagerDelegate {
    
    var restaurants = [Restaurant]()
    var manager: CLLocationManager!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchButton.layer.cornerRadius = 10
        searchButton.layer.masksToBounds = true
        
        manager = CLLocationManager()
        manager.delegate = self
        
        
        let status = CLLocationManager.authorizationStatus()
        if status == .notDetermined {
            self.manager.requestWhenInUseAuthorization()
        }
        
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 100

    }
    
    @IBAction func requestAPI(_ sender: Any) {
        
        if searchBar.text != "" {
            
            manager.startUpdatingLocation()
            
        } else {
            
            let alertViewController = UIAlertController(title: "Oooops!", message: "空欄のままです。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "閉じる", style: .default, handler: nil)
            alertViewController.addAction(okAction)
            present(alertViewController, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func currentPositionTapped(_ sender: UIButton) {
        manager.startUpdatingLocation()
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "toNext" {
                let destination = segue.destination as! ResultsViewController
                destination.results = restaurants
                restaurants = []
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let lat = manager.location?.coordinate.latitude.description, let lon = manager.location?.coordinate.longitude.description {
            
            requestAPI(text: searchBar.text ?? "", lat: lat, lon: lon)
            manager.stopUpdatingLocation()
            
        }
        
    }
    
    //    func locationManager(_ manager: CLLocationManager!,didFailWithError error: NSError!){
    //        print(error.localizedDescription)
    //    }
    
    
    func requestAPI(text: String, lat: String, lon: String) {
        var apiToContact = "https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid=962d993e62e7d37c996633ebb293d964&name=\(text)&latitude=\(lat)&longitude=\(lon)"
        apiToContact = apiToContact.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        Alamofire.request(apiToContact).validate().responseJSON() { response in
            switch response.result {
            case .success:
                if let value = response.result.value {
                    let json = JSON(value)
                    let allRests = json["rest"].arrayValue
                    
                    for restJson in allRests {
                        let restaurant = Restaurant(json: restJson)
                        self.restaurants.append(restaurant)
                    }
                    
                    self.performSegue(withIdentifier: "toNext", sender: nil)
                    
                }
            case .failure(let error):
                
                
                print(error)
            }
        }
    }
   
}
