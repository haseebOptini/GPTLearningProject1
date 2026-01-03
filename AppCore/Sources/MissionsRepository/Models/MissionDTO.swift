import Foundation

public struct MissionDTO: Codable, Sendable {
    public let id: Int
    public let launchLibraryId: Int?
    public let name: String
    public let description: String
    public let launchDesignator: String?
    public let type: String
    public let orbit: OrbitDTO?
    
    enum CodingKeys: String, CodingKey {
        case id
        case launchLibraryId = "launch_library_id"
        case name
        case description
        case launchDesignator = "launch_designator"
        case type
        case orbit
    }
    
    public init(
        id: Int,
        launchLibraryId: Int?,
        name: String,
        description: String,
        launchDesignator: String?,
        type: String,
        orbit: OrbitDTO?
    ) {
        self.id = id
        self.launchLibraryId = launchLibraryId
        self.name = name
        self.description = description
        self.launchDesignator = launchDesignator
        self.type = type
        self.orbit = orbit
    }
}

