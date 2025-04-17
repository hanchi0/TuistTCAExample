//
//  ProjectEnvironment.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import ProjectDescription

public enum ProjectEnvironment {
    public static let appVersion = "0.0.1"
    public static let appBuildCode = "1"
    public static let bundleID = "com.han.TuistTCAExample"
    public static let deploymentTargets: DeploymentTargets = .iOS("17.0")
}
