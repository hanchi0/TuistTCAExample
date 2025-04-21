import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: Feature.Home.rawValue,
    targets: [
        .makeInterface(Feature.Home),
        .makeFeature(
            Feature.Home,
            dependencies: [
                .External.ComposableArchitecture
            ]
        ),
        .makeTesting(Feature.Home),
        .makeTests(Feature.Home),
        .makeExampleApp(Feature.Home)
    ]
)
