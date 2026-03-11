import Foundation
import MissionsUseCases

enum MissionListViewState {
    case initial
    case loading
    case loaded(launches: [Launch])
    case error(Error)
}

@MainActor
final class MissionListViewModel: ObservableObject {
    // MARK: - Public properties
    @Published var state: MissionListViewState = .initial
    @Published private(set) var isLoadingMore: Bool = false

    // MARK: - Private properties
    private let missionsUseCase: MissionsUseCaseProtocol

    // MARK: - Init
    init(missionsUseCase: MissionsUseCaseProtocol) {
        self.missionsUseCase = missionsUseCase
    }

    // MARK: - Public methods
    func fetchMissions() async {
        print("alog::MissionListViewModel::fetchMissions")
    }
}
