//
//  CounterStore.swift
//  TCAApp
//
//  Created by えみり on 2024/12/24.
//

import SwiftUI
import ComposableArchitecture

struct CounterReducer: Reducer {
    struct State: Equatable {
        var count: Int = 0
    }
    
    enum Action: Equatable {
        case increment
        case decrement
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .increment:
            state.count += 1
            return .none
        case .decrement:
            state.count -= 1
            return .none
        }
    }
}
