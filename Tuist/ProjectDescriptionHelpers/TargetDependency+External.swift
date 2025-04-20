//
//  TargetDependency+External.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import ProjectDescription

extension TargetDependency {
    public enum External {
        public static let ComposableArchitecture = TargetDependency.external(name: "ComposableArchitecture")
    }
}
