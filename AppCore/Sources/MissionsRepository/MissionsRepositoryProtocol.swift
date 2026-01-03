public protocol MissionsRepositoryProtocol {
    func fetchMissions(limit: Int, offset: Int) async throws -> LaunchesResponseDTO
}
