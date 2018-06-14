//
//  TripsController.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 14/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit

class TripsController: UITableViewController {
    
    /// list of trips
    var trips:[TripDetail] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    /// selected station id
    var stationId: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableFooterView = UIView()
        
        // load data from Apollo
        let queryTrips = StationTripsQuery(stationId: stationId)
        apollo.fetch(query: queryTrips) { [weak self] result, error in
            guard let stations = result?.data?.trips else { return }
            self?.trips = stations.map { ($0?.fragments.tripDetail)! }
        }
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
    
    // MARK: - Actions

    
    /// Action to call, when touch sourtin button
    ///
    /// - Parameter sender: bar button
    @IBAction func touchSorting(_ sender: UIBarButtonItem) {
        // create action sheet to select sorting
        let alertController = UIAlertController(title: "Sorting", message: "Select sorting option.", preferredStyle: .actionSheet)
        
        let actionNameASC = UIAlertAction(title: "Name ASC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let endStationName0 = $0.endStationName, let endStationName1 = $1.endStationName {
                    return endStationName0 <  endStationName1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let actionNameDESC = UIAlertAction(title: "Name DESC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let endStationName0 = $0.endStationName, let endStationName1 = $1.endStationName {
                    return endStationName0 > endStationName1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let actionTimeASC = UIAlertAction(title: "Time ASC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let starttime0 = $0.starttime, let starttime1 = $1.starttime {
                    return starttime0 < starttime1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let actionTimeDESC = UIAlertAction(title: "Time DESC", style: .default) { (action:UIAlertAction) in
            self.trips.sort(by: {
                if let starttime0 = $0.starttime, let starttime1 = $1.starttime {
                    return starttime0 > starttime1
                }
                return false
            })
            self.tableView.reloadData()
        }
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .destructive)
        
        alertController.addAction(actionNameASC)
        alertController.addAction(actionNameDESC)
        alertController.addAction(actionTimeASC)
        alertController.addAction(actionTimeDESC)
        alertController.addAction(actionCancel)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
