//
//  HomeScreenView.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//

import SwiftUI

struct HomeScreenView: View {
    @State var viewModel: HomeViewModel = HomeViewModel()
    @State private var path: [CryptoCoin] = []

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView(.vertical) {
                ZStack(alignment: .top) {
                    Color.primary
                        .frame(height: 150)
                        .blur(radius: 180)

                    WalletContentView(viewModel: viewModel) { selectedCoin in
                        path.append(selectedCoin)
                    }
                }
                .ignoresSafeArea(.all)
            }
            .navigationDestination(for: CryptoCoin.self) { coin in
                DetailScreen(coin: coin)
            }
        }
        .preferredColorScheme(.dark)
        .task {
            await viewModel.fetchCryptoList()
        }
    }
}

struct WalletContentView: View {
    @Bindable var viewModel: HomeViewModel
    var onCoinTap: (CryptoCoin) -> Void

    var body: some View {
        VStack(alignment: .leading) {
            // Top view
            TopView()
            //Amount View
            AmountView()
            // Quick Action View
            QuickActionContainerView(quickActions: viewModel.quickActions ?? [])
            // Crypto list
            CryptoListView(cryptoList: viewModel.cryptoList) { selectedCoin in
                onCoinTap(selectedCoin)

            }
        }.background(.clear)
    }
}

struct AmountView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("$301.02")
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(.white)

            HStack(spacing: 12) {
                Text("$301.02")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.green)

                Text("+12.99")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.green)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(Constants.profitBGColor)

            }
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 5)
    }
}

struct TopView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ZStack {
                Circle()
                    .frame(width: 44)
                    .foregroundColor(.blue)
                    .padding()

                Text("A").font(.title3).bold()
                    .foregroundColor(.white)
                    .padding()
            }

            VStack(alignment: .leading) {
                Text("Bhavik Baghel")
                    .font(.default)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)

                Text("Account 1")
                    .font(.default)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }

            Spacer()

            CustomSystemButton(
                action: {
                    print("QRCode Tapped")
                },
                imageName: "qrcode.viewfinder"
            )

            CustomSystemButton(
                action: {
                    print("Search Tapped")
                },
                imageName: "magnifyingglass"
            )

        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 0)
            .padding(.horizontal, 15)
    }
}

#Preview {
    HomeScreenView()
}
