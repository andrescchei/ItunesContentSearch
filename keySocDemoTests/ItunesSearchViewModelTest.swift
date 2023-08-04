//
//  ItunesSearchViewModelTest.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 3/8/2023.
//

import XCTest
@testable import keySocDemo

final class ItunesSearchViewModelTest: XCTestCase {
    
    func testItunesSearchViewModel_Should_Exist() throws {
        var vm = ItunesSearchResultViewModel(
            getItunesSearchResultUseCase: MoackSearchItunesUseCase()
        )
    }

}
