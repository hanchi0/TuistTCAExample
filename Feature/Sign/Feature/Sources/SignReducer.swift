//
//  SignReducer.swift
//  Sign
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import Foundation
import SignInterface
import ComposableArchitecture

@Reducer
public struct SignReducer {
    public init() {}
    
    @ObservableState
    public struct State {
        public init() {}
        @Shared(.appStorage("token")) var token = ""
    }
    
    public enum Action {
        case signInButtonTapped
        case signUpButtonTapped
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .signInButtonTapped, .signUpButtonTapped:
                state.$token.withLock { $0 = "Sign" }
                return .none
            }
        }
    }
}
