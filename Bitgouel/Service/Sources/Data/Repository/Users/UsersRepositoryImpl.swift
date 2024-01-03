import Foundation

public struct UsersRepositoryImpl: UsersRepository {
    private let remoteUsersDataSource: RemoteUsersDataSource

    public init(remoteUsersDataSource: RemoteUsersDataSource) {
        self.remoteUsersDataSource = remoteUsersDataSource
    }

    public func login(id: String, password: String) async throws {
        try await remoteUsersDataSource.login(id: id, password: password)
    }
}
