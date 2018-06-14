//
//  TripDetailController.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 14/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit

class TripDetailController: UIViewController {

    @IBOutlet weak var labelStationStart: UILabel!
    @IBOutlet weak var labelStationEnd: UILabel!
    @IBOutlet weak var labelTimeStart: UILabel!
    @IBOutlet weak var labelTimeEnd: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var labelBike: UILabel!
        
    var trip:TripDetail?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let trip = self.trip {
            self.labelStationStart.text = trip.startStationName
            self.labelStationEnd.text = trip.endStationName
            if let tripduration = trip.tripduration {
                self.labelDuration.text =  "\(tripduration)s"
            }
            if let bikeid = trip.bikeid {
                self.labelBike.text = "\(bikeid)"
            }
            
            if let starttime = trip.starttime {
                self.labelTimeStart.text = Date(string: starttime)?.format()
            }
            
            if let stoptime = trip.stoptime {
                self.labelTimeEnd.text = Date(string: stoptime)?.format()
            }
        }        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
