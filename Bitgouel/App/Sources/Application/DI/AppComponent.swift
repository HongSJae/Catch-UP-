import NeedleFoundation
import Service
import SwiftUI

public final class AppComponent: BootstrapComponent {
    public func makeRootView() -> some View {
        rootComponent.makeView()
    }

    public var keychain: any Keychain {
        shared {
            KeychainImpl()
        }
    }

    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
}

public extension AppComponent {
    var loginFactory: any LoginFactory {
        LoginComponent(parent: self)
    }
}
