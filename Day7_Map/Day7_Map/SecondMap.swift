//
//  SecondMap.swift
//  Day7_Map
//
//  Created by ITI on 2/11/23.
//  Copyright © 2023 ITI. All rights reserved.
//

import UIKit
import MapKit


class SecondMap: UIViewController {

    var str:String!
    var SavedLocation: CLLocationCoordinate2D = CLLocationCoordinate2D()
    @IBOutlet weak var SecMap: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let SavedAnnotation:MyAnnotation=MyAnnotation(coordinate: SavedLocation, title: "ITI", subtitle: "new loc")
        SecMap.addAnnotation(SavedAnnotation)
    
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("annotation selected")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
