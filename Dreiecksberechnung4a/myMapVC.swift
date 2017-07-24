//
//  myMapVC.swift
//  Dreiecksberechnung4a
//
//  Created by Joachim Vetter on 24.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit
import MapKit

class myMapVC: UIViewController {

    var mySegControl: UISegmentedControl!
    var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myMap = MKMapView()
        view = myMap
        mySegControl = UISegmentedControl(items: ["22", "300", "78"])
        mySegControl.selectedSegmentIndex = 2
        mySegControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        view.addSubview(mySegControl)
    }

}
