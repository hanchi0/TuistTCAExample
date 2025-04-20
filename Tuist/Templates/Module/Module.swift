//
//  Module.swift
//  Templates
//
//  Created by han on 4/20/25.
//

import ProjectDescription

let layerAttribute = Template.Attribute.required("layer")
let nameAttribute = Template.Attribute.required("name")
let path = "\(layerAttribute)/\(nameAttribute)"

let template = Template(
    description: "모듈을 만드는 템플릿",
    attributes: [
        layerAttribute,
        nameAttribute
    ],
    items: [
        .directory(path: "\(path)", sourcePath: .relativeToCurrentFile("Files/Interface")),
        .directory(path: "\(path)", sourcePath: .relativeToCurrentFile("Files/Feature")),
        .directory(path: "\(path)", sourcePath: .relativeToCurrentFile("Files/Testing")),
        .directory(path: "\(path)", sourcePath: .relativeToCurrentFile("Files/Tests")),
        .directory(path: "\(path)", sourcePath: .relativeToCurrentFile("Files/ExampleApp")),
        .file(path: "\(path)/Interface/Sources/\(nameAttribute)Interface.swift", templatePath: .relativeToCurrentFile("Stencil/Interface.stencil")),
        .file(path: "\(path)/Testing/Sources/\(nameAttribute)Testing.swift", templatePath: .relativeToCurrentFile("Stencil/Testing.stencil")),
        .file(path: "\(path)/Tests/Sources/\(nameAttribute)Tests.swift", templatePath: .relativeToCurrentFile("Stencil/Tests.stencil")),
        .file(path: "\(path)/ExampleApp/Sources/\(nameAttribute)ExampleApp.swift", templatePath: .relativeToCurrentFile("Stencil/ExampleApp.stencil")),
        .file(path: "\(path)/Project.swift", templatePath: .relativeToCurrentFile("Stencil/Project.stencil"))
    ]
)
