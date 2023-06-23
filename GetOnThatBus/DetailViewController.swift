//
//  DetailViewController.swift
//  GetOnThatBus
//
//  Created by Wade Sellers on 6/23/23.
//

import UIKit
import MapKit
import CoreLocation

class DetailViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var routesLabel: UILabel!
    
    var selectedAnnotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.addAnnotation(selectedAnnotation)
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        nameLabel.text = selectedAnnotation.title
        routesLabel.text = selectedAnnotation.subtitle
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.mapView.showAnnotations(mapView.annotations, animated: true)
        locationManager.stopUpdatingLocation()
    }
    

    

}
