import SwiftUI

extension View {
    func eraseAnyView() -> AnyView {
        AnyView(self)
    }
}
