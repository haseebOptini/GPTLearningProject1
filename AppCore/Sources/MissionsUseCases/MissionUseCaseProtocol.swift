public protocol MissionsUseCaseProtocol {
    func fetchMissions() async throws -> [Launch]
}
