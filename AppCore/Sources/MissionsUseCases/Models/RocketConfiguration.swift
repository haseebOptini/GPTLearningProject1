import Foundation

public struct RocketConfiguration: Hashable, Sendable {
    public let id: Int
    public let launchLibraryId: Int?
    public let url: String
    public let name: String
    public let family: String
    public let fullName: String
    public let variant: String
    
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

