import SwiftUI
import MissionsUseCases

struct MissionListView: View {
    @StateObject var viewModel: MissionListViewModel
    
    var body: some View {
        switch viewModel.state {
        case .initial, .loading:
            ProgressView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case .loaded(let launches):
            EmptyView()
        case .error(let error):
            EmptyView()
        }
    }

    @ViewBuilder
    private func missionsView() -> some View {
        EmptyView()
    }
}
