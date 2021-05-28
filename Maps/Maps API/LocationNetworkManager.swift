//
//  LocationNetworkManager.swift
//  Maps
//
//  Created by Chad Rutherford on 5/28/21.
//

import Moya
import RxSwift
import RxMoya

struct LocationNetworkManager {
    static let shared = LocationNetworkManager()

    private let provider = MoyaProvider<LocationService>()

    private init() {}

    func getLocations() -> Single<[Location]> {
        return provider.rx
            .request(.fetchLocations)
            .filterSuccessfulStatusAndRedirectCodes()
            .map([Location].self)
    }
}
