import NetworkManager
import Foundation

public struct MissionsEndPoint: EndpointProtocol {
    // MARK: Public properties
    public var url: String = BaseURL.spaceDevs.rawValue

    public var path: String = Path.upcomingLaunches.rawValue

    public var httpMethod: NetworkManager.HTTPMethod = .get

    public var queryParameters: [URLQueryItem] {
        return [
            URLQueryItem(name: "limit", value: "\(self.limit)"),
            URLQueryItem(name: "offset", value: "\(self.offset)")
        ]
    }

    public var headers: [String : String]? = nil

    // MARK: - Private properties
    private let limit: Int
    private let offset: Int

    // MARK: - Init
    public init(limit: Int, offset: Int) {
        self.limit = limit
        self.offset = offset
    }
}
