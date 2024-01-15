import ConfigurationPlugin
import EnvironmentPlugin
import Foundation
import ProjectDescription

public extension Project {
    static func module(
        name: String,
        options: Options = .options(),
        packages: [Package] = [],
        settings: Settings = .settings(configurations: .default),
        targets: [Target],
        fileHeaderTemplate: FileHeaderTemplate? = nil,
        additionalFiles: [FileElement] = [],
        resourceSynthesizers: [ResourceSynthesizer] = .default
    ) -> Project {
        return Project(
            name: name,
            organizationName: env.organizationName,
            options: options,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: targets.contains { $0.product == .app } ? [
                .makeScheme(target: .dev, name: name),
                .makeDemoScheme(target: .dev, name: name)
            ]: [.makeScheme(target: .dev, name: name)],
            fileHeaderTemplate: fileHeaderTemplate,
            additionalFiles: additionalFiles,
            resourceSynthesizers: resourceSynthesizers
        )
    }
}

extension Scheme {
    static func makeScheme(target: ConfigurationName, name: String) -> Scheme {
        return Scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: target,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)"])
            ),
            runAction: .runAction(configuration: target),
            archiveAction: .archiveAction(configuration: target),
            profileAction: .profileAction(configuration: target),
            analyzeAction: .analyzeAction(configuration: target)
        )
    }
    static func makeDemoScheme(target: ConfigurationName, name: String) -> Scheme {
        return Scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)Demo"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: target,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)Demo"])
            ),
            runAction: .runAction(configuration: target),
            archiveAction: .archiveAction(configuration: target),
            profileAction: .profileAction(configuration: target),
            analyzeAction: .analyzeAction(configuration: target)
        )
    }
}
