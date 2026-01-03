import Foundation

public struct OrbitDTO: Codable, Sendable {
    public let id: Int
    public let name: String
    public let abbrev: String
    
    public init(
        id: Int,
        name: String,
        abbrev: String
    ) {
        self.id = id
        self.name = name
        self.abbrev = abbrev
    }
}

