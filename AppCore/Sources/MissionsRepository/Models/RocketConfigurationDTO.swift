import Foundation

public struct RocketConfigurationDTO: Codable, Sendable {
    public let id: Int
    public let launchLibraryId: Int?
    public let url: String
    public let name: String
    public let family: String
    public let fullName: String
    public let variant: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case launchLibraryId = "launch_library_id"
        case url
        case name
        case family
        case fullName = "full_name"
        case variant
    }
    
    public init(
        id: Int,
        launchLibraryId: Int?,
        url: String,
        name: String,
        family: String,
        fullName: String,
        variant: String
    ) {
        self.id = id
        self.launchLibraryId = launchLibraryId
        self.url = url
        self.name = name
        self.family = family
        self.fullName = fullName
        self.variant = variant
    }
}

