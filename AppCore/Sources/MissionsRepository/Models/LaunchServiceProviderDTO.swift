import Foundation

public struct LaunchServiceProviderDTO: Codable, Sendable {
    public let id: Int
    public let url: String
    public let name: String
    public let type: String
    
    public init(
        id: Int,
        url: String,
        name: String,
        type: String
    ) {
        self.id = id
        self.url = url
        self.name = name
        self.type = type
    }
}

