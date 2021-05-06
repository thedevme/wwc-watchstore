import SwiftUI
import Foundation

extension Color {
    static let basePink = Color("pink")
    static let baseYellow = Color("yellow")
    static let baseCharcoal = Color("charcoal")
    static let baseCharcoal10 = Color("charcoal10")
    static let baseCharcoal20 = Color("charcoal20")
    static let baseCharcoal40 = Color("charcoal40")
    static let baseCharcoal60 = Color("charcoal60")
}

extension UIColor {
    static let basePink = Color(named: "pink")
    static let baseYellow = Color(named: "yellow")
    static let baseCharcoal = Color(named: "charcoal")
    static let baseCharcoal10 = Color(named: "charcoal10")
    static let baseCharcoal20 = Color(named: "charcoal20")
    static let baseCharcoal40 = Color(named: "charcoal40")
    static let baseCharcoal60 = Color(named: "charcoal60")

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

