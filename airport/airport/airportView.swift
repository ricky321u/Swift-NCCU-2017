//
//  airportView.swift
//  airport
//
//  Created by Ricky on 30/5/2017.
//  Copyright © 2017年 Ricky. All rights reserved.
//

import UIKit

class AirportView : UITableViewCell {
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var airport: UILabel!
    @IBOutlet weak var shortname: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
}
