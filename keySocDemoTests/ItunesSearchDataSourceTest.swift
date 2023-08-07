//
//  ItunesSearchDataSourceTest.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 6/8/2023.
//

import Foundation
import RxTest
import RxSwift
import XCTest

final class ItunesSearchDataSourceTest: XCTestCase {

    var scheduler: TestScheduler!

    override func setUp() {
        super.setUp()
          // 2
        scheduler = TestScheduler(initialClock: 0)
    }

    override func tearDown() {
        super.tearDown()
    }

    func testSearchItunes_Obs_Return_dummy_Array() throws {
        let dataSource = MockItunesSearchDataSource()
        let obs: Observable<[ItunesContentEntity]> = dataSource.searchItunesWith(term: "", offset: 20, limit: 20, media: nil)

        let disposeBag = DisposeBag()
//             1
        let observer = scheduler.createObserver([ItunesContentEntity].self)

        obs.subscribe(observer).disposed(by: disposeBag)
//         4
        scheduler.start()
//         5
        let results = observer.events.compactMap { $0.value.element }

        XCTAssertEqual(results.first, ItunesContentEntity.dummy())
    }
    
    func testRealSearchItunes_Obs() throws {
        let disposeBag = DisposeBag()
        let observer = scheduler.createObserver([ItunesContentEntity].self)
        let dataSource = ImplItunesSearchDataSource(apiService: IpmlAPIService(apiClient:ImplRxApiClient()))
        let obs = dataSource.searchItunesWith(term: "ABC", offset: 0, limit: 20, media: nil)
        
        obs.subscribe(observer).disposed(by: disposeBag)
        scheduler.start()
        let results = observer.events.compactMap { $0.value.element }
        XCTAssertEqual(results.first?.count, 20)
    }
}
