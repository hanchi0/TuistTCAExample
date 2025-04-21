//
//  HomeView.swift
//  Home
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

public struct HomeView: View {
    private let store: StoreOf<HomeReducer>
    
    public init(store: StoreOf<HomeReducer>) {
        self.store = store
    }
    
    public var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    HomeView(
        store: .init(
            initialState: HomeReducer.State(),
            reducer: {
                HomeReducer()
            }
        )
    )
}
