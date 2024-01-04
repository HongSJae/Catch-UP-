import Foundation

public protocol RecruitmentsRepository {
    func fetchRecruitmentList() async throws -> [RecruitmentEntity]
}
