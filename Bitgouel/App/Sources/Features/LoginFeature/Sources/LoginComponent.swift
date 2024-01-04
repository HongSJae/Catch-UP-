import NeedleFoundation
import Service
import SwiftUI

public protocol LoginDependency: Dependency {
    var loginUseCase: any LoginUseCase { get }
    var recruitmentFactory: any RecruitmentFactory { get }
}

public final class LoginComponent: Component<LoginDependency>, LoginFactory {
    @MainActor
    public func makeView() -> some View {
        LoginView(
            viewModel: .init(loginUseCase: dependency.loginUseCase),
            recruitmentFactory: dependency.recruitmentFactory
        )
    }
}
