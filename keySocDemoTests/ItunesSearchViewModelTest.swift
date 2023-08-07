//
//  ItunesSearchViewModelTest.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 3/8/2023.
//

import XCTest
//import RxTest
@testable import keySocDemo

final class ItunesSearchViewModelTest: XCTestCase {
    
    func testItunesSearchViewModel_Should_Exist() throws {
        let vm = ItunesSearchResultViewModel(
            getItunesSearchResultUseCase: MockSearchItunesUseCase()
        )
    }
    
    func testSearchItunesUseCase_Obs_Return_Empty_Array() throws {
//        let useCase = MockSearchItunesUseCase()
//        useCase.searchItunesUseCase().subscribe()
    }
}
