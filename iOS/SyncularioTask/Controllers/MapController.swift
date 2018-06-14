//
//  MapController.swift
//  SyncularioTask
//
//  Created by Radek Zmeskal on 13/06/2018.
//  Copyright © 2018 Radek Zmeskal. All rights reserved.
//

import UIKit
import MapKit
import Apollo

class MapController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    /// list of stations
    var stations:[StationDetail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // focuss to New York
        let center = CLLocationCoordinate2D(latitude: 40.70355377, longitude: -74.00670227)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        mapView.setRegion(region, animated: true)
        
        // load data
        let queryStations = StationsQuery()
        apollo.fetch(query: queryStations) { [weak self] result, error in
            guard let stations = result?.data?.stations else { return }
            self?.stations = stations.map { ($0?.fragments.stationDetail)! }
            
            for station in (self?.stations)! {
                let annotation = StationAnnotation(station: station, coordinate: CLLocationCoordinate2D(latitude: station.startStationLatitude!, longitude: station.startStationLongitude!))
                self?.mapView.addAnnotation(annotation)
            }
        }                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let controller = segue.destination as? TripsController, let station = sender as? StationDetail {
            controller.stationId = station.startStationId!
        }
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        
    }

    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        guard let annotation = annotation as? StationAnnotation else { return nil }
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let annotation = view.annotation as! StationAnnotation
        
        self.performSegue(withIdentifier: "segueStation", sender: annotation.station)
//        self.navigationController?.performSegue(withIdentifier: "segueStation", sender: annotation)
    }
 
}
