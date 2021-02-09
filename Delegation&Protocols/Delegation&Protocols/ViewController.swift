//
//  ViewController.swift
//  Delegation&Protocols
//
//  Created by bahadir on 9.02.2021.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count-1]
        print("longitude : \(location.coordinate.longitude), latitude: \(location.coordinate.latitude)")
    }
}

