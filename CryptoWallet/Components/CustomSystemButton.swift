//
//  CustomSystemButton.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 07/04/2026.
//
import SwiftUI

struct CustomSystemButton: View {
    let action: () -> Void
    let imageName: String
    let foregroundColor: Color? = .white

    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: imageName)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.white)
                .padding(5)
                .background(.clear)
                //.clipShape(Circle())
        }
    }
}
