//
//  ViewController.swift
//  airport
//
//  Created by Ricky on 30/5/2017.
//  Copyright © 2017年 Ricky. All rights reserved.
//

import UIKit

class AirportViewController: UIViewController {
    
    var airportimage = ""
    var airportlabel = ""
    var countrylabel = ""
    var citylabel = ""

    
    @IBOutlet weak var airportImages: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var airportLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        airportImages.image = UIImage (named: airportimage)
        airportLabel.text = airportlabel
        countryLabel.text = "COUNTRY  " + countrylabel
        cityLabel.text = "      CITY     " + citylabel
        // Do any additional setup after loading the view.
    }
        // Do any additional setup after loading the view, typically from a nib.
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
