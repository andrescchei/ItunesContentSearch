//
//  ItunesSearchResultViewModel.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 3/8/2023.
//

import Foundation

class ItunesSearchResultViewModel {
    private var getItunesSearchResultUseCase: SearchItunesUseCase
    
    init(getItunesSearchResultUseCase: SearchItunesUseCase) {
        self.getItunesSearchResultUseCase = getItunesSearchResultUseCase
    }
}
