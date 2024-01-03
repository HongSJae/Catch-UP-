import Foundation

public protocol UsersRepository {
    func login(id: String, password: String) async throws
}
