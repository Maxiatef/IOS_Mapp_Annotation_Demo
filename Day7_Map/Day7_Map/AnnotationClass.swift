//
//  AnnotationClass.swift
//  Day7_Map
//
//  Created by ITI on 2/11/23.
//  Copyright © 2023 ITI. All rights reserved.
//

import Foundation
import UIKit
import MapKit



class MyAnnotation: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    public var title: String?
    public var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D,title:String,subtitle:String) {
        
        self.coordinate=coordinate
        self.title=title
        self.subtitle=subtitle
        
    }
    /*
    init(){
        self.coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D()
        self.title=""
        self.subtitle=""
        <#code#>
    }
    */
}
