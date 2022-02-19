
import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let kisiler: [Kisiler]?
    let success: Int?
}

// MARK: - Kisiler
struct Kisiler: Codable {
    let kisiID, kisiAd, kisiTel: String?

    enum CodingKeys: String, CodingKey {
        case kisiID = "kisi_id"
        case kisiAd = "kisi_ad"
        case kisiTel = "kisi_tel"
    }
}
