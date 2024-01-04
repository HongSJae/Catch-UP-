import SwiftUI

struct RecruitmentView: View {
    @StateObject var viewModel: RecruitmentViewModel

    init(viewModel: RecruitmentViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            List(viewModel.recruitmentList, id: \.self) { recruitment in
                Text(recruitment.companyName)
            }
        }
        .onAppear(perform: viewModel.onAppear)
    }
}
