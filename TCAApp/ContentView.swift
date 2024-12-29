//
//  ContentView.swift
//  TCAApp
//
//  Created by えみり on 2024/12/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<CounterReducer>
    
    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("Count: \(viewStore.count)")
                    .font(.largeTitle)
                
                HStack {
                    Button("−") {
                        viewStore.send(.decrement)
                    }
                    .padding()
                    
                    Button("+") {
                        viewStore.send(.increment)
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView(
        store: Store(
            initialState: CounterReducer.State(),
            reducer: { CounterReducer() }
        )
    )
}
