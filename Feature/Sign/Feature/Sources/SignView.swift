//
//  SignView.swift
//  Sign
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

public struct SignView: View {
    private let store: StoreOf<SignReducer>
    
    public init(store: StoreOf<SignReducer>) {
        self.store = store
    }
    
    public var body: some View {
        VStack {
            Button("Sign In") {
                store.send(.signInButtonTapped)
            }
            
            Spacer().frame(height: 20)
            
            Button("Sign Up") {
                store.send(.signUpButtonTapped)
            }
        }
    }
}

#Preview {
    SignView(
        store: .init(
            initialState: SignReducer.State(),
            reducer: {
                SignReducer()
            }
        )
    )
}
