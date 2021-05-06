import Foundation

enum CustomTextStyle {
    case custom(CustomFont, Int)

    var size: Int {
        switch self {
            case .custom(_, let size):  return size
        }
    }

    var name: CustomFont {
        switch self {
            case .custom(let fontWeight, _):        return fontWeight
        }
    }
}
