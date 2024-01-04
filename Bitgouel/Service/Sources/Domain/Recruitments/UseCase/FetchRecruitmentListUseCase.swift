import Foundation

public protocol FetchRecruitmentListUseCase {
    func callAsFunction() async throws -> [RecruitmentEntity]
}
