import NetworkManager
import MissionsRepository
import MissionsUseCases

struct DIContainer {
    static let shared: DIContainer = .init()
    
    private init() {}
    
    func networkManager() -> NetworkManagerProtocol {
        return NetworkManager()
    }

    func missionsRepository() -> MissionsRepositoryProtocol {
        return MissionsRepository(networkManager: networkManager())
    }

    func missionsUseCases() -> MissionsUseCaseProtocol {
        return MissionUseCase(missionsRepository: missionsRepository())
    }
}
