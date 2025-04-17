//
//  Target+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import ProjectDescription

extension Target {
    public static func makeInterface<T: Layer>(_ layer: T) -> Target {
        let name = layer.rawValue + "Interface"
        return .makeFramework(
            name: name,
            product: .staticFramework,
            bundleId: ProjectEnvironment.bundleID + "." + name,
            sources: "Interface/Sources/**"
        )
    }
    
    public static func makeFeature<T: Layer>(
        _ layer : T,
        product: Product = .staticFramework,
        dependencies: [TargetDependency] = []
    ) -> Target {
        .makeFramework(
            name: layer.rawValue,
            product: product,
            bundleId: ProjectEnvironment.bundleID + "." + layer.rawValue,
            sources: "Feature/Sources/**",
            resources: "Feature/Resources/**",
            dependencies: dependencies + [
                .interface(layer)
            ]
        )
    }
    
    public static func makeTesting<T: Layer>(
        _ layer : T,
        dependencies: [TargetDependency] = []
    ) -> Target {
        let name = layer.rawValue + "Testing"
        return .makeFramework(
            name: name,
            product: .staticFramework,
            bundleId: ProjectEnvironment.bundleID + "." + name,
            sources: "Testing/Sources/**",
            resources: "Testing/Resources/**",
            dependencies: dependencies + [
                .interface(layer)
            ]
        )
    }
    
    public static func makeTests<T: Layer>(
        _ layer : T,
        dependencies: [TargetDependency] = []
    ) -> Target {
        let name = layer.rawValue + "Tests"
        return .makeFramework(
            name: name,
            product: .unitTests,
            bundleId: ProjectEnvironment.bundleID + "." + name,
            sources: "Tests/Sources/**",
            resources: "Tests/Resources/**",
            dependencies: dependencies + [
                .feature(layer),
                .testing(layer)
            ]
        )
    }
    
    public static func makeExampleApp<T: Layer>(
        _ layer : T,
        dependencies: [TargetDependency] = []
    ) -> Target {
        let name = layer.rawValue + "ExampleApp"
        return .makeFramework(
            name: name,
            product: .app,
            bundleId: ProjectEnvironment.bundleID + "." + name,
            sources: "ExampleApp/Sources/**",
            resources: "ExampleApp/Resources/**",
            dependencies: dependencies + [
                .feature(layer)
            ]
        )
    }
    
    private static func makeFramework(
        name: String,
        destinations: Destinations = .iOS,
        product: Product,
        productName: String? = nil,
        bundleId: String,
        deploymentTargets: DeploymentTargets? = ProjectEnvironment.deploymentTargets,
        infoPlist: InfoPlist? = .default,
        sources: SourceFilesList? = nil,
        resources: ResourceFileElements? = nil,
        copyFiles: [CopyFilesAction]? = nil,
        headers: Headers? = nil,
        entitlements: Entitlements? = nil,
        scripts: [TargetScript] = [],
        dependencies: [TargetDependency] = [],
        settings: Settings? = nil,
        coreDataModels: [CoreDataModel] = [],
        environmentVariables: [String : EnvironmentVariable] = [:],
        launchArguments: [LaunchArgument] = [],
        additionalFiles: [FileElement] = [],
        buildRules: [BuildRule] = [],
        mergedBinaryType: MergedBinaryType = .disabled,
        mergeable: Bool = false,
        onDemandResourcesTags: OnDemandResourcesTags? = nil
    ) -> Target {
        .target(
            name: name,
            destinations: destinations,
            product: product,
            productName: productName,
            bundleId: bundleId,
            deploymentTargets: deploymentTargets,
            infoPlist: infoPlist,
            sources: sources,
            resources: resources,
            copyFiles: copyFiles,
            headers: headers,
            entitlements: entitlements,
            scripts: scripts,
            dependencies: dependencies,
            settings: settings,
            coreDataModels: coreDataModels,
            environmentVariables: environmentVariables,
            launchArguments: launchArguments,
            additionalFiles: additionalFiles,
            buildRules: buildRules,
            mergedBinaryType: mergedBinaryType,
            mergeable: mergeable,
            onDemandResourcesTags: onDemandResourcesTags
        )
    }
}
