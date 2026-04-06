//
//  CryptoItem.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//

import Foundation

struct CryptoCoin: Codable, Identifiable, Hashable {
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

extension CryptoCoin {
    var infoDict: [String: String] {
        var dict: [String: String] = [:]
    
        dict["Rank"] = String(rank)
        dict["Symbol"] = symbol
        dict["MarketCap"] = marketCap
        dict["Category"] = category
        
        return dict
    }
}
