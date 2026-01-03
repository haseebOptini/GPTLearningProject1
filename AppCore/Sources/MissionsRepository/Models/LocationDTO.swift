import Foundation

public struct LocationDTO: Codable, Sendable {
    public let id: Int
    public let url: String
    public let name: String
    public let countryCode: String
    public let mapImage: String?
    public let totalLaunchCount: Int
    public let totalLandingCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case name
        case countryCode = "country_code"
        case mapImage = "map_image"
        case totalLaunchCount = "total_launch_count"
        case totalLandingCount = "total_landing_count"
    }
    
    public init(
        id: Int,
        url: String,
        name: String,
        countryCode: String,
        mapImage: String?,
        totalLaunchCount: Int,
        totalLandingCount: Int
    ) {
        self.id = id
        self.url = url
        self.name = name
        self.countryCode = countryCode
        self.mapImage = mapImage
        self.totalLaunchCount = totalLaunchCount
        self.totalLandingCount = totalLandingCount
    }
}

