//
//  ImplItunesSearchDataSource.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 7/8/2023.
//

import Foundation
import RxSwift

class ImplItunesSearchDataSource: ItunesSearchDataSource {
    let apiService: APIService
    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    func searchItunesWith(
        term: String?,
        offset: Int,
        limit: Int,
        media: String?) -> Observable<[ItunesContentEntity]> {
        return apiService.searchItunesWith(
            requestModel: SearchItunesRequestModel(
                term: term,
                offset: offset,
                limit: limit,
                media: media
            )
        )
    }
}
