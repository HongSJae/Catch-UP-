import SwiftUI

public struct RootView: View {
    private let loginFactory: any LoginFactory

    public init(loginFactory: any LoginFactory) {
        self.loginFactory = loginFactory
    }

    public var body: some View {
        VStack {
            loginFactory.makeView().eraseAnyView()
        }
    }
}
