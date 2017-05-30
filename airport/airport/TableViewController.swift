//
//  File.swift
//  airport
//
//  Created by Ricky on 30/5/2017.
//  Copyright © 2017年 Ricky. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var airportImages = ["MUC.jpg", "KUL.jpg","IAD.jpg", "IAH.jpg", "ORD.jpg", "TSA.jpg", "SYD.jpg", "YVR.jpg", "YYZ.jpg", "PEK.jpg", "PVG.jpg", "CAN.jpg", "CKG.jpg", "CDG.jpg", "FRA.jpg", "HKG.jpg", "NRT.jpg", "HND.jpg", "KIX.jpg", "NGO.jpg", "OKA.jpg", "CTS.jpg", "AMS.jpg", "SIN.jpg","ICN.jpg", "TPE.jpg", "KHH.jpg", "BKK.jpg", "LHR.jpg", "SFO.jpg", "LAX.jpg", "JFK.jpg", "SEA.jpg", "ATL.jpg","DTW.jpg", "SVO.jpg", "DME.jpg", "EDI.jpg", "GMP.jpg", "MNL.jpg",]
    
    var AirportList : [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "airports", ofType: "plist")
        
        AirportList = NSArray(contentsOfFile: path!) as! [[String: String]]
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (AirportList.count)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            as? AirportView
        
        cell?.airport.text = (AirportList[indexPath.row]["ShortName"])
        cell?.country.text = (AirportList[indexPath.row]["Country"])
        cell?.shortname.text = (AirportList[indexPath.row]["IATA"])
        cell?.name.text = (AirportList[indexPath.row]["ServedCity"])
        
        return (cell)!
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AirportVieController" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! AirportViewController
                destinationController.airportImages = airportImages[indexPath.row]
                destinationController.airportlabel = (AirportList[indexPath.row]["Airport"])!
                destinationController.countrylabel = (AirportList[indexPath.row]["Country"])!
                destinationController.citylabel = (AirportList[indexPath.row]["ServedCity"])!
                }
            }
        }
    
}
