import ProjectDescription

let project = Project(
    name: "TuistTCAExample",
    targets: [
        .target(
            name: "TuistTCAExample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistTCAExample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TuistTCAExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistTCAExampleTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistTCAExample")]
        ),
    ]
)
