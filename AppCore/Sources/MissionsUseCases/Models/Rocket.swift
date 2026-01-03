import Foundation

public struct Rocket: Hashable, Sendable {
    public let id: Int
    public let configuration: RocketConfiguration
    
    public init(
        id: Int,
        configuration: RocketConfiguration
    ) {
        self.id = id
        self.configuration = configuration
    }
}

