import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let Moya = TargetDependency.external(name: "Moya")
    static let KeychainSwift = TargetDependency.external(name: "KeychainSwift")
    static let Swinject = TargetDependency.external(name: "Swinject")
}
