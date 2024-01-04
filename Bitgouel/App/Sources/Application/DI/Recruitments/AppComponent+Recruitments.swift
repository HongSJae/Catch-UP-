import NeedleFoundation
import Service

public extension AppComponent {
    var remoteRecruitmentsDataSource: any RemoteRecruitmentsDataSource {
        shared {
            RemoteRecruitmentsDataSourceImpl(keychain: keychain)
        }
    }
    
    var RecruitmentsRepository: any RecruitmentsRepository {
        shared {
            RecruitmentsRepositoryImpl(remoteRecruitmentsDataSource: remoteRecruitmentsDataSource)
        }
    }
    
    var fetchRecruitmentListUseCase: any FetchRecruitmentListUseCase {
        shared {
            FetchRecruitmentListUseCaseImpl(recruitmentsRepository: RecruitmentsRepository)
        }
    }
}
