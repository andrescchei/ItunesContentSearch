//
//  ItunesContentEntity.swift
//  keySocDemo
//
//  Created by Andres Chan (做野) on 4/8/2023.
//

import Foundation

struct ItunesContentEntity: Equatable, Codable {
    let wrapperType: String
    let kind: String
    let artistId: Int
    let collectionId: Int
    let trackId: Int
    let artistName: String
    let collectionName: String
    let trackName: String
    let collectionCensoredName: String
    let trackCensoredName: String
    let artistViewUrl: String
    let collectionViewUrl: String
    let trackViewUrl: String
    let previewUrl: String
    let artworkUrl30: String
    let artworkUrl60: String
    let artworkUrl100: String
    let collectionPrice: Decimal
    let trackPrice: Decimal
    let releaseDate: String
    let collectionExplicitness: String
    let trackExplicitness: String
    let discCount: Int
    let discNumber: Int
    let trackCount: Int
    let trackNumber: Int
    let trackTimeMillis: Int32
    let country: String
    let currency: String
    let primaryGenreName: String
    let isStreamable: Bool
    
    static func dummy() -> [ItunesContentEntity] {
        return [
            ItunesContentEntity(
                wrapperType: "track",
                kind: "song",
                artistId: 628845,
                collectionId: 206201734,
                trackId: 206201784,
                artistName: "Will Smith",
                collectionName: "Greatest Hits",
                trackName: "Freakin' It",
                collectionCensoredName: "Greatest Hits",
                trackCensoredName: "Freakin' It",
                artistViewUrl: "https://music.apple.com/us/artist/will-smith/628845?uo=4",
                collectionViewUrl: "https://music.apple.com/us/album/freakin-it/206201734?i=206201784&uo=4",
                trackViewUrl: "https://music.apple.com/us/album/freakin-it/206201734?i=206201784&uo=4",
                previewUrl: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/3e/de/ff/3edeff90-9c9b-1caf-cc4e-613c2359ebcd/mzaf_7424827509491166622.plus.aac.p.m4a",
                artworkUrl30: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/83/86/2b/83862bab-beb9-5736-509e-74eb6f261e83/dj.qtjkodwa.jpg/30x30bb.jpg",
                artworkUrl60: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/83/86/2b/83862bab-beb9-5736-509e-74eb6f261e83/dj.qtjkodwa.jpg/60x60bb.jpg",
                artworkUrl100: "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/83/86/2b/83862bab-beb9-5736-509e-74eb6f261e83/dj.qtjkodwa.jpg/100x100bb.jpg",
                collectionPrice: 9.99,
                trackPrice: 1.29,
                releaseDate: "1999-11-16T08:00:00Z",
                collectionExplicitness: "notExplicit",
                trackExplicitness: "notExplicit",
                discCount: 1,
                discNumber: 1,
                trackCount: 15,
                trackNumber: 11,
                trackTimeMillis: 239227,
                country: "USA",
                currency: "USD",
                primaryGenreName: "Pop",
                isStreamable: true
            )
        ]
    }
}

