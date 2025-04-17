//
//  Project+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import ProjectDescription

extension Project {
    public static func makeProject(
        name: String,
        organizationName: String? = "han",
        classPrefix: String? = nil,
        options: Options = .options(),
        packages: [Package] = [],
        settings: Settings? = .settings(configurations: [.debug(name: .debug), .release(name: .release) ]),
        targets: [Target] = [],
        schemes: [Scheme] = [],
        fileHeaderTemplate: FileHeaderTemplate? = nil,
        additionalFiles: [FileElement] = [],
        resourceSynthesizers: [ResourceSynthesizer] = .default
    ) -> Project {
        Project(
            name: name,
            organizationName: organizationName,
            classPrefix: classPrefix,
            options: options,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes,
            fileHeaderTemplate: fileHeaderTemplate,
            additionalFiles: additionalFiles,
            resourceSynthesizers: resourceSynthesizers
        )
    }
}
