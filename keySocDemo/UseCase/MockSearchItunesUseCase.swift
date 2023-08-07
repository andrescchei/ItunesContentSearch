//
//  MockGetItunesSearchResultUseCase.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 4/8/2023.
//

import Foundation

protocol SearchItunesUseCase {
    func searchItunesUseCase() -> [ItunesContentModel]
}

struct MockSearchItunesUseCase: SearchItunesUseCase {
    func searchItunesUseCase() -> [ItunesContentModel] {
        return []
    }
}
