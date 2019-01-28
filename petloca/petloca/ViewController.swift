//
//  ViewController.swift
//  petloca
//
//  Created by 奥田蓮 on 2019/01/14.
//  Copyright © 2019 奥田蓮. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocationManager()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupLocationManager() {
        locationManager = CLLocationManager()
        guard let locationManager = locationManager else {return}
        
    locationManager.requestWhenInUseAuthorization()
        
        let status = CLLocationManager.authorizationStatus()
        if status == .authorizedWhenInUse {
            locationManager.delegate = self
            locationManager.distanceFilter = 10
            locationManager.startUpdatingLocation()
        }
    }
    @IBOutlet weak var MapView: MKMapView!
}

