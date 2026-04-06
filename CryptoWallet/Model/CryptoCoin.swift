//
//  CryptoItem.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//

import Foundation

struct CryptoCoin: Codable, Identifiable {
    let id = UUID() // local usage
    let rank: Int
    let name: String
    let symbol: String
    let image: String
    let priceUSD: Double
    let marketCap: String
    let category: String

    enum CodingKeys: String, CodingKey {
        case rank
        case name
        case symbol
        case image
        case priceUSD = "price_usd"
        case marketCap = "market_cap"
        case category
    }
}
