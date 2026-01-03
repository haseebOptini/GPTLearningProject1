public protocol MissionsRepositoryProtocol {
  func fetchMissions() async throws -> LaunchesResponseDTO
}
