//
//  DetailScreen.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 07/04/2026.
//
import SwiftUI
import Charts

struct DetailScreen: View {
    var coin: CryptoCoin
    
    var body: some View {
        ScrollView {
            VStack {
                // Amount view
                AmountView()
                
                // Chart
                ChartView().padding()
                
                QuickActionContainerView(quickActions: [.buy, .qrCode, .sendMoney, .more]).padding(.vertical, 20)
                
                AboutView(coin: coin)
                    .padding(.horizontal,15)
                
                InfoView(coin: coin)
                    .padding(.vertical)
                    .padding(.horizontal,15)
                
                
            }
        }.preferredColorScheme(.dark)
            .navigationTitle(coin.symbol)
                    .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailScreen(coin: CryptoCoin(
        rank: 1,
        name: "Bitcoin",
        symbol: "BTC",
        image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png",
        priceUSD: 106550,
        marketCap: "2.1T",
        category: "Store of Value"
    ))
}


struct AboutView: View {
    var coin: CryptoCoin
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("About")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.primary)
            
            Text("Polygon is a protocol and a framework for building and connecting Ethereum-compatible blockchain network")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.secondary)
            
            Button {
                print("Show more tapped")
            } label: {
                Text("Show More")
            }
        }
    }
}

struct InfoView: View {
    var coin: CryptoCoin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Info")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.primary)
            
            LazyVStack(alignment: .leading, spacing: 1) {
                ForEach(Array(coin.infoDict), id: \.key) { key, value in
                    HStack {
                        Text(key)
                        Spacer()
                        Text(value)
                    }
                    .padding()
                    .background(Constants.quickActionBGColor)
                }
            }
            .border(.black, width: 1)
            .cornerRadius(15)
        }
        .frame(maxWidth: .infinity)
    }
}

struct PriceData: Identifiable {
    let id = UUID()
    let day: String
    let price: Double
}

struct ChartView: View {
    let data: [PriceData] = [
        .init(day: "Mon", price: 50),
        .init(day: "Tue", price: 100),
        .init(day: "Wed", price: 300),
        .init(day: "Thu", price: 120),
        .init(day: "Fri", price: 500),
        .init(day: "Sat", price: 400),
        .init(day: "Sun", price: 600)
    ]
    
    var body: some View {
        Chart(data) { item in
            LineMark(
                x: .value("Day", item.day),
                y: .value("Price", item.price)
            )
        }
        .frame(height: 200)
        .padding()
    }
}
