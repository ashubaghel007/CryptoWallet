//
//  Helper.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//

import Foundation

struct CryptoWalletHelper {
    static func loadJSON<T: Decodable>(from filename: String) -> T? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            print("❌ File not found in bundle: \(filename).json")
            return nil
        }

        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            print("❌ Decoding error:", error)
            return nil
        }
    }
    
    // just for now to fetch offline data, in real implementation we need to fetch data from server
    //TODO: to be implemented server integration later on
    static func getCryptoCoinList() -> [CryptoCoin]? {
        return loadJSON(from: "getCryptoList")
    }
}
