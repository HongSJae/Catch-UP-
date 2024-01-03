import SwiftUI

public struct LoginView: View {
    @StateObject var viewModel: LoginViewModel

    public init(viewModel: LoginViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    public var body: some View {
        VStack {
            TextField("아이디", text: $viewModel.id)
            SecureField("비밀번호", text: $viewModel.password)

            Button(action: viewModel.login) {
                Text("로그인")
            }
        }
    }
}
