import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: Feature.Sign.rawValue,
    targets: [
        .makeInterface(Feature.Sign),
        .makeFeature(
            Feature.Sign,
            dependencies: [
                .External.ComposableArchitecture
            ]
        ),
        .makeTesting(Feature.Sign),
        .makeTests(Feature.Sign),
        .makeExampleApp(Feature.Sign)
    ]
)
