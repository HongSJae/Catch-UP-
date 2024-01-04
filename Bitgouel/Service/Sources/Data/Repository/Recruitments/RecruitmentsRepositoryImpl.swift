import Foundation

public struct RecruitmentsRepositoryImpl: RecruitmentsRepository {
    private let remoteRecruitmentsDataSource: RemoteRecruitmentsDataSource

    public init(remoteRecruitmentsDataSource: RemoteRecruitmentsDataSource) {
        self.remoteRecruitmentsDataSource = remoteRecruitmentsDataSource
    }

    public func fetchRecruitmentList() async throws -> [RecruitmentEntity] {
        try await remoteRecruitmentsDataSource.fetchRecruitmentList()
    }
}
