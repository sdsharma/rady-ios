//
//  SecondViewController.swift
//  Rady School of Management
//
//  Created by Shivam Sharma on 8/30/16.
//  Copyright © 2016 Rady School of Management. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let initialLocation = CLLocation(latitude: 32.8866182, longitude: -117.2434736)
        centerMapOnLocation(initialLocation)
        let annotation = Annotation(title: "Rady School of Management",
                              locationName: "La Jolla, CA",
                              discipline: "University",
                              coordinate: CLLocationCoordinate2D(latitude: 32.8866182, longitude: -117.2434736))
        
        mapView.addAnnotation(annotation)
        mapView.selectAnnotation(mapView.annotations[0], animated: true)
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

