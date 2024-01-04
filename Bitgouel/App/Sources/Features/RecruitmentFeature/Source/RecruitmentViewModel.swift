import Service
import Foundation

@MainActor
final class RecruitmentViewModel: BaseViewModel {
    @Published var recruitmentList: [RecruitmentEntity] = []
    private let fetchRecruitmentLiseUseCase: FetchRecruitmentListUseCase

    init(fetchRecruitmentLiseUseCase: FetchRecruitmentListUseCase) {
        self.fetchRecruitmentLiseUseCase = fetchRecruitmentLiseUseCase
    }

    func onAppear() {
        fetchRecruitmentList()
    }

    func fetchRecruitmentList() {
        Task {
            do {
                let list = try await fetchRecruitmentLiseUseCase.callAsFunction()
                self.recruitmentList = list
            } catch {
                print("모집의뢰서 못 가져옴!:", error.localizedDescription)
            }
        }
    }
}
