import Foundation

public struct Location: Hashable, Sendable {
    public let id: Int
    public let url: String
    public let name: String
    public let countryCode: String
    public let mapImage: String?
    public let totalLaunchCount: Int
    public let totalLandingCount: Int
    
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

