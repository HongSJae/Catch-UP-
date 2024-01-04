import Foundation

public final class RemoteRecruitmentsDataSourceImpl: BaseRemoteDataSource<RecruitmentsAPI>, RemoteRecruitmentsDataSource {
    public func fetchRecruitmentList() async throws -> [RecruitmentEntity] {
        try await request(.fetchRecruitmentList, dto: RecruitmentListResponseDTO.self)
            .toDomain()
    }
}
