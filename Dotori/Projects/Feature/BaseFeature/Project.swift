import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.module(
    name: ModulePaths.Feature.BaseFeature.rawValue,
    targets: [
		.interface(module: .feature(.BaseFeature)),
		.implements(module: .feature(.BaseFeature), dependencies: [
            .feature(target: .BaseFeature, type: .interface),
            .userInterface(target: .DesignSystem),
            .shared(target: .GlobalThirdPartyLibrary)
		]),
		.tests(module: .feature(.BaseFeature), dependencies: [
			.feature(target: .BaseFeature)
		])
	]
)
