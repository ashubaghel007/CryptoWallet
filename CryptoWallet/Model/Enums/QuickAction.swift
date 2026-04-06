enum QuickAction: String, Identifiable, CaseIterable {
    case qrCode
    case sendMoney
    case swap
    case buy

    var id: String {
        rawValue
    }

    var title: String {
        switch self {
        case .qrCode: return "Receive"
        case .sendMoney: return "Send"
        case .swap: return "Swap"
        case .buy: return "Buy"
        }
    }

    var imageName: String {
        switch self {
        case .qrCode: return "qrcode"
        case .sendMoney: return "paperplane.fill"
        case .swap: return "arrow.left.arrow.right"
        case .buy: return "cart.fill"
        }
    }
}
