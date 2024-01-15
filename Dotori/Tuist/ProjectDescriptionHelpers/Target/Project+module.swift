//import ProjectDescription
//import Foundation
//import ConfigurationPlugin
//import EnvironmentPlugin
//
//public extension Product {
//    static func module(
//        name: String,
//        options: Project.Options = .options(),
//        packages: [Package] = [],
//        settings: Settings = .settings(configurations: .default),
//        targets: [Target] = [],
//        fileHeaderTemplate: FileHeaderTemplate? = nil,
//        additionalFiles: [FileElement] = [],
//        resourceSynthesizers: [ResourceSynthesizer] = .default
//    ) -> Project {
//        Project(
//            name: name,
//            organizationName: env.organizationName,
//            options: options,
//            packages: packages,
//            settings: settings,
//            targets: targets,
//            schemes: targets.contains { $0.product == .app } ? [
//                .makeScheme(target: .dev, name: name),
//                .makeDemoScheme(target: .dev, name: name)
//            ]: [.makeScheme(target: .dev, name: name)],
//            fileHeaderTemplate: fileHeaderTemplate,
//            additionalFiles: additionalFiles,
//            resourceSynthesizers: resourceSynthesizers
//        )
//    }
//}
