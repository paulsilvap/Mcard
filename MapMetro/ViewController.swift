//
//  ViewController.swift
//  MapMetro
//
//  Created by Paul Silva on 7/28/16.
//  Copyright © 2016 Paul Silva. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController {

    override func loadView() {
        let camera = GMSCameraPosition.cameraWithLatitude(0.419193, longitude: -78.189943, zoom: 14)
        let mapView = GMSMapView.mapWithFrame(.zero, camera: camera)
        self.view = mapView
        
        // marker
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(0.419193, -78.189943)
        marker.title = "Innopolis"
        marker.snippet = "Ciudad Yachay - Centro de Innovaciòn"
        marker.map = mapView
        
        let calle_guzman = GMSMarker()
        calle_guzman.position = CLLocationCoordinate2DMake(0.418110, -78.193866)
        calle_guzman.title = "Calle Guzmán"
        calle_guzman.snippet = "Calle en la ciudad de Urcuquí"
        calle_guzman.icon = UIImage(named: "boat@2x.png")
        calle_guzman.map = mapView
        
        // disable indoor view
        mapView.indoorEnabled = false
        
        // enable accessibility
        mapView.accessibilityElementsHidden = false
        
        // enable My Location and Compass Button
        mapView.myLocationEnabled = true
        
        // The myLocation attribute of the mapView may be null
        if let mylocation = mapView.myLocation {
            print("User's location: \(mylocation)")
        } else {
            print("User's location is unknown")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

