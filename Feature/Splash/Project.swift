import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: Feature.Splash.rawValue,
    targets: [
        .makeInterface(Feature.Splash),
        .makeFeature(
            Feature.Splash,
            dependencies: [
                .External.ComposableArchitecture
            ]
        ),
        .makeTesting(Feature.Splash),
        .makeTests(Feature.Splash),
        .makeExampleApp(Feature.Splash)
    ]
)
