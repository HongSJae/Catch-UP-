import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let Moya = TargetDependency.external(name: "Moya")
    static let NeedleFoundation = TargetDependency.external(name: "NeedleFoundation")
    static let KeychainSwift = TargetDependency.external(name: "KeychainSwift")
}
