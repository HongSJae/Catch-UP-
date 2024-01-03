import NeedleFoundation
import Service

public extension AppComponent {
    var remoteUsersDataSource: any RemoteUsersDataSource {
        shared {
            RemoteUsersDataSourceImpl(keychain: keychain)
        }
    }
    
    var usersRepository: any UsersRepository {
        shared {
            UsersRepositoryImpl(remoteUsersDataSource: remoteUsersDataSource)
        }
    }
    
    var loginUseCase: any LoginUseCase {
        shared {
            LoginUseCaseImpl(usersRepository: usersRepository)
        }
    }
}
