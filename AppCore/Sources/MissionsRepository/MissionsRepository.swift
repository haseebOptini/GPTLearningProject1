import NetworkManager

public struct MissionsRepository: MissionsRepositoryProtocol {
    // MARK: - Private properties
    private let networkManager: NetworkManagerProtocol
    // MARK: - Init
    public init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }

    // MARK: - MissionsRepositoryProtocol
    public func fetchMissions(limit: Int, offset: Int) async throws -> LaunchesResponseDTO {
        let endpoint: EndpointProtocol = MissionsEndPoint(limit: limit, offset: offset)
        return try await networkManager.request(endpoint, type: LaunchesResponseDTO.self)
    }
}
