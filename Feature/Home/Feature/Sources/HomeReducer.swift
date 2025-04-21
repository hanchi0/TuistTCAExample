//
//  HomeReducer.swift
//  Home
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import Foundation
import HomeInterface
import ComposableArchitecture

@Reducer
public struct HomeReducer {
    public init() {}
    
    @ObservableState
    public struct State {
        public init() {}
    }
    
    public enum Action {
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            }
        }
    }
}
