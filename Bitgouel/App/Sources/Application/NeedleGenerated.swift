

import NeedleFoundation
import Service
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class LoginDependencyf4e78d0ad57be469bfd9Provider: LoginDependency {


    init() {

    }
}
/// ^->AppComponent->LoginComponent
private func factoryd6018e98563de75a2ba4e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return LoginDependencyf4e78d0ad57be469bfd9Provider()
}

#else
extension LoginComponent: Registration {
    public func registerItems() {

    }
}
extension AppComponent: Registration {
    public func registerItems() {

        localTable["loginFactory-any LoginFactory"] = { [unowned self] in self.loginFactory as Any }
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent->LoginComponent", factoryd6018e98563de75a2ba4e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->LoginComponent", factoryd6018e98563de75a2ba4e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
