//
//  MapsAPI.swift
//  Maps
//
//  Created by Chad Rutherford on 5/28/21.
//

import Foundation
import Moya

enum LocationService {
    case fetchLocations
}

extension LocationService: TargetType {
    var baseURL: URL { URL(string: "https://raw.githubusercontent.com")! }

    var path: String { "simonsickle/pfj-locations/master/locations.json" }

    var method: Moya.Method { .get }

    var sampleData: Data { Data() }

    var task: Task { .requestPlain }

    var headers: [String : String]? { nil }
}
