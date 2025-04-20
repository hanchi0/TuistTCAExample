//
//  SplashView.swift
//  Splash
//
//  Created by han on 4/20/25.
//  Copyright © 2025 han. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

public struct SplashView: View {
    private let store: StoreOf<SplashReducer>
    
    public init(store: StoreOf<SplashReducer>) {
        self.store = store
    }
    
    public var body: some View {
        VStack {
            Spacer()
            
            Text("Splash")
                .font(.title)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .background(.black)
        .task {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                store.send(.viewDidAppear)
            }
        }
    }
}

#Preview {
    SplashView(
        store: .init(
            initialState: SplashReducer.State(),
            reducer: {
                SplashReducer()
            }
        )
    )
}
