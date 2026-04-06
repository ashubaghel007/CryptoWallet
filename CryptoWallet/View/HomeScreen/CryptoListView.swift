import SDWebImageSwiftUI
//
//  QuickActionView.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//
import SwiftUI

struct CryptoListView: View {
    var cryptoList: [CryptoCoin]?
    var tapAction: (CryptoCoin) -> Void

    var body: some View {
        LazyVStack(spacing: 10) {  // Exact control over gap
            ForEach(cryptoList ?? []) { item in
                CryptoCoinCell(crypto: item).onTapGesture {
                    tapAction(item)
                }
            }
        }.padding()
    }
}

struct CryptoCoinCell: View {
    let crypto: CryptoCoin?

    var body: some View {
        HStack(alignment: .center, spacing: 15) {

            WebImage(url: URL(string: crypto?.image ?? ""))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)

            VStack(alignment: .leading) {
                Text(crypto?.name ?? "")
                    .font(.headline).foregroundColor(.white.opacity(0.8))

                Text(crypto?.marketCap ?? "")
                    .font(.subheadline).foregroundColor(.gray.opacity(0.8))
            }

            Spacer(minLength: 20)

            VStack(alignment: .trailing) {
                Text(String(crypto?.priceUSD ?? 0.0))
                    .font(.headline).foregroundColor(.white.opacity(0.8))

                Text("+$0.00 ↑")
                    .font(.subheadline)
                    .foregroundColor(.green)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Constants.quickActionBGColor)
        )

    }
}

//#Preview {
//    CryptoListView(cryptoList: [CryptoCoin(
//        rank: 1,
//        name: "Bitcoin",
//        symbol: "BTC",
//        image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png",
//        priceUSD: 106550,
//        marketCap: "2.1T",
//        category: "Store of Value"
//    ),
//    CryptoCoin(
//        rank: 2,
//        name: "Ethereum",
//        symbol: "ETH",
//        image: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
//        priceUSD: 3500,
//        marketCap: "420B",
//        category: "Smart Contract Platform"
//    )])
//}
