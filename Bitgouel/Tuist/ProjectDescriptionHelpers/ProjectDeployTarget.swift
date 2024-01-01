import ProjectDescription

public enum ProjectDeployTarget: String {
    case debug = "DEBUG"
    case release = "RELEASE"

    public var configurationName: ConfigurationName {
        .configuration(self.rawValue)
    }
}
