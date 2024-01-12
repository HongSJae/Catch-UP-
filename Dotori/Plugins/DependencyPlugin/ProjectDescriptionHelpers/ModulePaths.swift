import Foundation
import ProjectDescription

public enum ModulePaths {
    case feature(Feature)
    case domain(Domain)
    case core(Core)
    case shared(Shared)
    case userInterface(UserInterface)
}

public extension ModulePaths {
    func targetName(type: MicroTargetType) -> String {
        switch self {
        case let .feature(module as MicroTargetPathConvertable),
            let .domain(module as MicroTargetPathConvertable),
            let .core(module as MicroTargetPathConvertable),
            let .shared(module as MicroTargetPathConvertable),
            let .userInterface(module as MicroTargetPathConvertable):
            module.targetName(type: type)
        }
    }
}

public extension ModulePaths {
    enum Feature: String, MicroTargetPathConvertable {
        case SigninFeature
    }
}

public extension ModulePaths {
    enum Domain: String, MicroTargetPathConvertable {
        case UsersDomain
    }
}

public extension ModulePaths {
    enum Core: String, MicroTargetPathConvertable {
        case JwtStore
    }
}

public extension ModulePaths {
    enum Shared: String, MicroTargetPathConvertable {
        case GlobalThirdPartyLibrary
    }
}

public extension ModulePaths {
    enum UserInterface: String, MicroTargetPathConvertable {
        case DesignSystem
    }
}

public enum MicroTargetType: String {
    case interface = "Interface"
    case source = ""
    case testing = "Testing"
    case unitTest = "Tests"
    case demo = "Demo"
}

public protocol MicroTargetPathConvertable {
    func targetName(type: MicroTargetType) -> String
}

public extension MicroTargetPathConvertable where Self: RawRepresentable {
    func targetName(type: MicroTargetType) -> String {
        "\(self.rawValue)\(type.rawValue)"
    }
}
