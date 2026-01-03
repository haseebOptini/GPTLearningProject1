import Foundation

public struct Mission: Hashable, Sendable {
    public let id: Int
    public let launchLibraryId: Int?
    public let name: String
    public let description: String
    public let launchDesignator: String?
    public let type: String
    public let orbit: Orbit?
    
    public init(
        id: Int,
        launchLibraryId: Int?,
        name: String,
        description: String,
        launchDesignator: String?,
        type: String,
        orbit: Orbit?
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

