//
//  AppReducer.swift
//  TuistTCAExample
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import Foundation
import Home
import ComposableArchitecture

@Reducer
struct AppReducer {
    @ObservableState
    struct State {
        @Shared(.inMemory("isSplashShown")) var isSplashShown: Bool = false
        @Shared(.appStorage("token")) var token = ""
        @Presents var destination: Destination.State?
        var selection: Int = 0
        var path = StackState<Path.State>()
        var home = HomeReducer.State()
    }
    
    enum Action: BindableAction {
        case binding(BindingAction<State>)
        case path(StackActionOf<Path>)
        case destination(PresentationAction<Destination.Action>)
        case home(HomeReducer.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.home, action: \.home) { HomeReducer() }
        
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
        .ifLet(\.$destination, action: \.destination)
    }
    
    @Reducer
    enum Path {
    }
    
    @Reducer
    enum Destination {
    }
}
