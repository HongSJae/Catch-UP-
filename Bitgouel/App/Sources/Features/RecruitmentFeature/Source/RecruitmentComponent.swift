import NeedleFoundation
import SwiftUI
import Service

public protocol RecruitmentDependency: Dependency {
    var fetchRecruitmentListUseCase: any FetchRecruitmentListUseCase { get }
}

public final class RecruitmentComponent: Component<RecruitmentDependency>, RecruitmentFactory {
    @MainActor
    public func makeView() -> some View {
        RecruitmentView(viewModel: .init(fetchRecruitmentLiseUseCase: dependency.fetchRecruitmentListUseCase))
    }
}
