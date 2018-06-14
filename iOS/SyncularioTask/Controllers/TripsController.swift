//
//  TripsController.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 14/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit

class TripsController: UITableViewController {

    var trips:[TripDetail] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
     
    var stationId: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queryTrips = StationTripsQuery(stationId: stationId)
        apollo.fetch(query: queryTrips) { [weak self] result, error in
            //            print("\(result)")
            guard let stations = result?.data?.trips else { return }
            self?.trips = stations.map { ($0?.fragments.tripDetail)! }
        }
        
        self.tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.trips.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTrip", for: indexPath)

        let trip = self.trips[indexPath.row]
        
        if let labelTime = cell.viewWithTag(1) as? UILabel, let starttime = trip.starttime {
            labelTime.text = Date(string: starttime)?.format()
        }
        
        if let labelDetsination = cell.viewWithTag(2) as? UILabel {
            labelDetsination.text = trip.endStationName
        }
        
        cell.tag = indexPath.row

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let controller = segue.destination as? TripDetailController, let cell = sender as? UITableViewCell {
            let trip = self.trips[cell.tag]            
            controller.trip = trip
        }
    }

    @IBAction func touchSorting(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorting", message: "Select sorting option.", preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "Name ASC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let endStationName0 = $0.endStationName, let endStationName1 = $1.endStationName {
                    return endStationName0 <  endStationName1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let action2 = UIAlertAction(title: "Name DESC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let endStationName0 = $0.endStationName, let endStationName1 = $1.endStationName {
                    return endStationName0 > endStationName1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let action3 = UIAlertAction(title: "Time ASC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let starttime0 = $0.starttime, let starttime1 = $1.starttime {
                    return starttime0 < starttime1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let action4 = UIAlertAction(title: "Time DESC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let starttime0 = $0.starttime, let starttime1 = $1.starttime {
                    return starttime0 > starttime1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let action5 = UIAlertAction(title: "Cancel", style: .destructive)
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        alertController.addAction(action4)
        alertController.addAction(action5)
        
        self.present(alertController, animated: true, completion: nil)
    }

}
