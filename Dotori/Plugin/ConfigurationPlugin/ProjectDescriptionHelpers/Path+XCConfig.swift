import ProjectDescription

public extension Path {
    static func relativeToXCConfig(type: ProjectDeployTarget, name: String) -> Self {
        .relativeToRoot("XCConfig/\(name)/\(type.rawValue).xcconfig")
    }

    static var shared: Self {
        .relativeToRoot("XCConfig/Shared.xcconfig")
    }
}
