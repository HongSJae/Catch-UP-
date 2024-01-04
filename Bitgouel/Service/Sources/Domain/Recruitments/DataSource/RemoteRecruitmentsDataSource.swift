import Foundation

public protocol RemoteRecruitmentsDataSource {
    func fetchRecruitmentList() async throws -> [RecruitmentEntity]
}
