//
//  APIService.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 7/8/2023.
//

import Foundation
import RxSwift

struct SearchItunesRequestModel: Codable {
    let term: String?
    let offset: Int
    let limit: Int
    let media: String?
}


protocol APIService {
    func searchItunesWith(requestModel: SearchItunesRequestModel) -> Observable<[ItunesContentEntity]>
}

class IpmlAPIService: APIService {
    let apiClient: RxApiClient
    init(apiClient: RxApiClient) {
        self.apiClient = apiClient
    }
    
    func searchItunesWith(requestModel: SearchItunesRequestModel) -> Observable<[ItunesContentEntity]> {
        return apiClient.send(
            path: "search",
            apiRequest: APIRequest(
                method: .GET,
                requestModel: requestModel
            )
        )
    }
}
