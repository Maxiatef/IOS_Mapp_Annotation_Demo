//
//  ViewController.swift
//  Day7_Map
//
//  Created by ITI on 2/11/23.
//  Copyright © 2023 ITI. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController , MKMapViewDelegate{
    
    @IBOutlet weak var MapView: MKMapView!
    var Mylocattion: CLLocationCoordinate2D = CLLocationCoordinate2D()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MapView.delegate = self
    
    
    }
    /*
    func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool) {
        print("region will change")
        
    }
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        print("region changed")
    }
 */
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("annotation selected")
    }
    
    
    @IBAction func TapGestureAction(_ sender: UITapGestureRecognizer) {
        
        let touchPoint = sender.location(in: MapView)
        print("X=\(touchPoint.x), Y=\(touchPoint.y)")
        Mylocattion = MapView.convert(touchPoint, toCoordinateFrom: MapView)
        let  NewAnnotation:MyAnnotation = MyAnnotation(coordinate: Mylocattion, title: "ITI", subtitle:"Alex")
        MapView.addAnnotation(NewAnnotation)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let secondVc:SecondMap = segue.destination as! SecondMap
        secondVc.SavedLocation = Mylocattion
    }
}
