import Service
import Foundation

@MainActor 
public final class LoginViewModel: BaseViewModel {
    @Published var id: String = "test@dsm.hs.kr"
    @Published var password: String = "Student123@"
    @Published var isSuccessLogin = false

    private let loginUseCase: LoginUseCase

    public init(loginUseCase: any LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    public func login() {
        Task {
            do {
                try await loginUseCase.callAsFunction(id: id , password: password)
                self.isSuccessLogin = true
                print("로그인")
            } catch {
                print("로그인 실패:", error.localizedDescription)
            }
        }
    }
}
