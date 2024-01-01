import NeedleFoundation
import Service
import SwiftUI

public protocol LoginDependency: Dependency {}

public final class LoginComponent: Component<LoginDependency>, LoginFactory {
    public func makeView() -> some View {
        LoginView()
    }
}
