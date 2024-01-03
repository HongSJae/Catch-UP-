import Foundation

public struct LoginUseCaseImpl: LoginUseCase {
    private let usersRepository: UsersRepository

    public init(usersRepository: UsersRepository) {
        self.usersRepository = usersRepository
    }

    public func callAsFunction(id: String, password: String) async throws {
        try await usersRepository.login(id: id, password: password)
    }
}
