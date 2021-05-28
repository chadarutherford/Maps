//
//  MapViewModel.swift
//  Maps
//
//  Created by Chad Rutherford on 5/28/21.
//

import RxSwift
import Combine

/**
 Use this class for any business logic or API calls.
 */
final class MapViewModel: ObservableObject {

    let disposeBag = DisposeBag()

    init() { fetchLocations().subscribe(onNext: { print($0) }).disposed(by: disposeBag) }

    func fetchLocations() -> Observable<[Location]> {
        return LocationNetworkManager.shared.getLocations().asObservable()
    }
}
