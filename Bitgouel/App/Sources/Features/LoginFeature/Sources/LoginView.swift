import SwiftUI

public struct LoginView: View {
    @StateObject var viewModel: LoginViewModel
    private let recruitmentFactory: any RecruitmentFactory

    public init(
        viewModel: LoginViewModel,
        recruitmentFactory: any RecruitmentFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.recruitmentFactory = recruitmentFactory
    }
    public var body: some View {
        NavigationView {
            VStack {
                TextField("아이디", text: $viewModel.id)
                SecureField("비밀번호", text: $viewModel.password)
                
                Button(action: viewModel.login) {
                    Text("로그인")
                }
            }
            .background {
                NavigationLink(isActive: $viewModel.isSuccessLogin) {
                    recruitmentFactory.makeView().eraseAnyView()
                } label: {
                    EmptyView()
                }
            }
        }
    }
}
