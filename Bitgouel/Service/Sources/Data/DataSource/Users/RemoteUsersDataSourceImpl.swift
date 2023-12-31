import Foundation

public class RemoteUsersDataSourceImpl: BaseRemoteDataSource<UsersAPI>, RemoteUsersDataSource {
    public func login(id: String, password: String) async throws {
        try await request(.login(.init(accountID: id, password: password)))
    }
}
