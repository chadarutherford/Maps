//
//  MapViewController.swift
//  Maps
//
//  Created by Chad Rutherford on 5/28/21.
//

import UIKit

/**
    Create and add MapView as view to this view controller.
    Load this controller instead of a default controller.
    Ensure that we are not creating any memory retain cycle in the app.
*/
final class MapViewController: UIViewController {

    let mapView: MapView = {
        let mapView = MapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //TODO:- Set Up View Here
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    static func makeMapViewController() -> MapViewController {
        let mapViewController = MapViewController(nibName: nil, bundle: nil)
        return mapViewController
    }
}
