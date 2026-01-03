import Foundation

public struct RocketDTO: Codable, Sendable {
    public let id: Int
    public let configuration: RocketConfigurationDTO
    
    public init(
        id: Int,
        configuration: RocketConfigurationDTO
    ) {
        self.id = id
        self.configuration = configuration
    }
}

