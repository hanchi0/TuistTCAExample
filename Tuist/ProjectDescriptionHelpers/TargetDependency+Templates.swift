//
//  TargetDependency+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import ProjectDescription

extension TargetDependency {
    public static func interface<T: Layer>(_ layer: T) -> TargetDependency {
        .project(target: layer.rawValue + "Interface", path: .relativeToRoot("\(layer.name)/\(layer.rawValue)"))
    }
    
    public static func feature<T: Layer>(_ layer: T) -> TargetDependency {
        .project(target: layer.rawValue, path: .relativeToRoot("\(layer.name)/\(layer.rawValue)"))
    }
    
    public static func testing<T: Layer>(_ layer: T) -> TargetDependency {
        .project(target: layer.rawValue + "Testing", path: .relativeToRoot("\(layer.name)/\(layer.rawValue)"))
    }
}
