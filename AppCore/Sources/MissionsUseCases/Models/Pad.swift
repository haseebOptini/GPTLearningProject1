import Foundation

public struct Pad: Hashable, Sendable {
    public let id: Int
    public let url: String
    public let agencyId: Int?
    public let name: String
    public let infoUrl: String?
    public let wikiUrl: String?
    public let mapUrl: String?
    public let latitude: String
    public let longitude: String
    public let location: Location
    public let mapImage: String?
    public let totalLaunchCount: Int
    
    public init(
        id: Int,
        url: String,
        agencyId: Int?,
        name: String,
        infoUrl: String?,
        wikiUrl: String?,
        mapUrl: String?,
        latitude: String,
        longitude: String,
        location: Location,
        mapImage: String?,
        totalLaunchCount: Int
    ) {
        self.id = id
        self.url = url
        self.agencyId = agencyId
        self.name = name
        self.infoUrl = infoUrl
        self.wikiUrl = wikiUrl
        self.mapUrl = mapUrl
        self.latitude = latitude
        self.longitude = longitude
        self.location = location
        self.mapImage = mapImage
        self.totalLaunchCount = totalLaunchCount
    }
}

