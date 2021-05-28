//
//  MapView.swift
//  Maps
//
//  Created by Chad Rutherford on 5/28/21.
//

import GoogleMaps
import UIKit

/**
 Use this class for any view related logic.
 */

final class MapView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureMapView()
    }

    private func configureMapView() {
        let mapView = GMSMapView(frame: .zero, camera: GMSCameraPosition.camera(withLatitude: -33.8683, longitude: 151.2086, zoom: 16))
        mapView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mapView.topAnchor.constraint(equalTo: topAnchor),
            mapView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
