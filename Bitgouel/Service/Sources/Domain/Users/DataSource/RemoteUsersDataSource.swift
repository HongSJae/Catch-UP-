import Foundation

public protocol RemoteUsersDataSource {
    func login(id: String, password: String) async throws
}
