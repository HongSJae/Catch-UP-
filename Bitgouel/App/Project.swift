import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.executable(
    name: "Bitgouel",
    platform: .iOS,
    dependencies: [
        .project(target: "Service", path: Path("../Service"))
    ]
)
