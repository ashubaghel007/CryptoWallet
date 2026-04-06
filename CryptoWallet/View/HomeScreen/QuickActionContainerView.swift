//
//  QuickActionContainerView.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//
import SwiftUI

struct QuickActionContainerView: View {
    let quickActions: [QuickAction]?

    var body: some View {
        HStack(spacing: 10) {
            if let quickActions {
                ForEach(quickActions) { action in
                    QuickActionView(action: action)
                }
            }
        }.padding(.horizontal, 15)
    }
}

//#Preview {
//    QuickActionContainerView()
//}

struct QuickActionView: View {

    let action: QuickAction?

    var body: some View {

        Button(action: {
            print("\(action?.title ?? "") tapped")
        }) {
            VStack(alignment: .center, spacing: 10) {
                Image(systemName: action?.imageName ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Constants.quickActionFGColor)

                Text(action?.title ?? "").foregroundColor(
                    .gray
                ).font(.system(size: 14, weight: .medium))
                
            }.padding(15)
                .frame(minWidth: 85)
                .background(Constants.quickActionBGColor)
                .cornerRadius(10)
        }
    }
}
