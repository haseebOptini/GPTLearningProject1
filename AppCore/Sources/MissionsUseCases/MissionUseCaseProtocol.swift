public protocol MissionUseCaseProtocol {
    func fetchMissions() -> [Mission]
}
// TODO: Need to provide the actual implementation for
public struct Mission: Hashable, Sendable {
    
}
