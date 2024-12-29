//
//  TCAAppApp.swift
//  TCAApp
//
//  Created by えみり on 2024/12/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(
                    initialState: CounterReducer.State(),
                    reducer: { CounterReducer() }
                )
            )
        }
    }
}
