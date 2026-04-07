//
//  MainScreen.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 07/04/2026.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            WalletView()
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("Wallet")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    MainScreen()
}
