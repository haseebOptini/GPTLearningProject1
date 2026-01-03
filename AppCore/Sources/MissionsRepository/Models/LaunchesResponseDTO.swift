import Foundation

public struct LaunchesResponseDTO: Codable, Sendable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [LaunchDTO]
    
    public init(
        count: Int,
        next: String?,
        previous: String?,
        results: [LaunchDTO]
    ) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }
}

