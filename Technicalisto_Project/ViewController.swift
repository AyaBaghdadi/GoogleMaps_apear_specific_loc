//
//  ViewController.swift
//
//  Created by Technicalisto.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController , CLLocationManagerDelegate , GMSMapViewDelegate {


    @IBOutlet weak var mapView: GMSMapView!
    
    private let locationManager = CLLocationManager()
    
    var latitude = 30.5460
    
    var longitude = 31.546540
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        mapView.delegate = self
        
        self.GoToLocation()

    }
    
    func GoToLocation(){

        let camera = GMSCameraPosition.camera(withLatitude: self.latitude , longitude: self.longitude , zoom: 8)
        
        mapView.camera = camera
        
    }
    
    // Set marker
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        
        let position = CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
        
        let marker = GMSMarker(position: position)
        
        marker.map = self.mapView
    }
    

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        guard status == .authorizedWhenInUse else {
            return
        }
        
        mapView.isMyLocationEnabled = true
        
        mapView.settings.myLocationButton = true
        
    }
    
  
}



