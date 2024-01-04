import Foundation

public struct FetchRecruitmentListUseCaseImpl: FetchRecruitmentListUseCase {
    private let recruitmentsRepository: RecruitmentsRepository

    public init(recruitmentsRepository: RecruitmentsRepository) {
        self.recruitmentsRepository = recruitmentsRepository
    }

    public func callAsFunction() async throws -> [RecruitmentEntity] {
        try await recruitmentsRepository.fetchRecruitmentList()
    }
}
