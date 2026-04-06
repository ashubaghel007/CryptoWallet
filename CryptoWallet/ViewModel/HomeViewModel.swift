//
//  HomeViewModel.swift
//  CryptoWallet
//
//  Created by Ashish Baghel on 06/04/2026.
//
import Observation
import Foundation

protocol HomeViewModelAdapter  {
    var cryptoList: [CryptoCoin]? { get set }
    var quickActions: [QuickAction]? { get }
    var isloading: Bool { get set }
    
    func fetchCryptoList() async

}

@Observable
class HomeViewModel: HomeViewModelAdapter {
    var cryptoList: [CryptoCoin]?
    var quickActions: [QuickAction]? { return QuickAction.allCases }
    var isloading: Bool = false

    func fetchCryptoList() async {
        cryptoList = CryptoWalletHelper.getCryptoCoinList()
        print(cryptoList)
    }
}
