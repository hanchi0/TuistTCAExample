import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "TuistTCAExample",
    targets: [
        .target(
            name: "TuistTCAExample",
            destinations: .iOS,
            product: .app,
            bundleId: ProjectEnvironment.bundleID,
            deploymentTargets: ProjectEnvironment.deploymentTargets,
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "Launch Screen",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .feature(Feature.Splash),
                .feature(Feature.Sign),
                .feature(Feature.Home),
                .External.ComposableArchitecture
            ]
        ),
        .target(
            name: "TuistTCAExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: ProjectEnvironment.bundleID + "Tests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistTCAExample")]
        ),
    ]
)
