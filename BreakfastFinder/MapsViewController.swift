//
//  MapsViewController.swift
//  LEAFT
//
//  Created by Luis Roberto Contreras Parra on 26/05/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import UIKit
import MapKit


struct Place:Identifiable {
    let id = UUID()
    let name :String
    let latitude:Double
    let longitude:Double
    var corrdinate:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

class MapsViewController: UIViewController,CLLocationManagerDelegate {
    var titleText: String?
    let manager = CLLocationManager()
    
    let places = [
        Place(name: "Museo Britanico", latitude: 51.519581, longitude: -0.127002),
        Place(name: "Torre de londres", latitude: 51.508052, longitude: -0.076035),
        Place(name: "Big ben", latitude: 51.500710, longitude: -0.124617)
    ]
    

    @IBOutlet weak var maps: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(titleText ?? "hola")
        super.viewDidAppear(animated)
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            manager.stopUpdatingLocation()
            renderMap(location: location)
        }
    }
    
    func renderMap(location:CLLocation){
        let coordinates2 = CLLocationCoordinate2D(latitude: 25.69068704005346, longitude: -100.32946376355153)
                                                  
        let coordinates = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)                                          
        let coordinates3 = CLLocationCoordinate2D(latitude: 25.686958509611998, longitude: -100.3321622589142)
        
        
        
        let region = MKCoordinateRegion(center: coordinates2, latitudinalMeters: 2000, longitudinalMeters: 2000)
       
        maps.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinates2
        pin.title = "Estas Aqui"
        pin.subtitle = "Ubicacion actual"
        maps.addAnnotation(pin)
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = coordinates3
        pin2.title = "RCE - Cable & Electronics Recycling"
        pin2.subtitle = "Reciclaje de Cable, Electronica y Metales S.A. de C.V."
        maps.addAnnotation(pin2)
    }
    


}
