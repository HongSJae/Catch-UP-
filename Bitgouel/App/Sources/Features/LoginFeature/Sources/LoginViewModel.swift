import Service
import Foundation

public final class LoginViewModel: BaseViewModel {
    @Published var id: String = "test@dsm.hs.kr"
    @Published var password: String = "Student123@"

    private let loginUseCase: LoginUseCase

    public init(loginUseCase: any LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    public func login() {
        Task {
            do {
                print("로그인 성공")
                try await loginUseCase.callAsFunction(id: id , password: password)
            } catch {
                print("로그인 실패:", error.localizedDescription)
            }
        }
    }
}
