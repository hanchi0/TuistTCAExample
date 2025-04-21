//
//  Layer.swift
//  ProjectDescriptionHelpers
//
//  Created by han on 4/17/25.
//

import Foundation

public protocol Layer {
    var name: String { get }
    var rawValue: String { get }
}

public enum App: String, Layer {
    public var name: String { String(describing: Self.self) }
    
    case TuistTCAExample
}

public enum Feature: String, Layer {
    public var name: String { String(describing: Self.self) }
    
    case Splash
    case Sign
}

public enum Domain: String, Layer {
    public var name: String { String(describing: Self.self) }
    
    case Auth
}

public enum Core: String, Layer {
    public var name: String { String(describing: Self.self) }
    
    case Network
}
