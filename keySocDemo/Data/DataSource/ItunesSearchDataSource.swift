//
//  ItunesSearchDataSource.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 6/8/2023.
//

import Foundation
import RxSwift

protocol ItunesSearchDataSource {
    func searchItunesWith(term: String?, offset: Int, limit: Int, media: String?) -> Observable<[ItunesContentEntity]>
}
