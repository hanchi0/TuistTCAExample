//
//  SplashReducer.swift
//  Splash
//
//  Created by han on 4/20/25.
//  Copyright © 2025 han. All rights reserved.
//

import Foundation
import SplashInterface
import ComposableArchitecture

@Reducer
public struct SplashReducer {
    public init() {}
    
    @ObservableState
    public struct State {
        public init() {}
        @Shared(.inMemory("isSplashShown")) var isSplashShown = false
    }
    
    public enum Action {
        case viewDidAppear
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .viewDidAppear:
                state.$isSplashShown.withLock { $0 = true }
                return .none
            }
        }
    }
}
