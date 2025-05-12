//
//  ContentView.swift
//  SwiftUINavigationStack
//
//  Created by Chee Ket Yung on 12/05/2025.
//
import SwiftUI


enum Screen: Hashable {
    case home
    case details(id: Int)
    case settings
}

struct ContentView: View {
    @State private var path: [Screen] = []

    var body: some View {
        NavigationStack(path: $path) {
            List {
                Button("Go to Details #1") {
                    path.append(.details(id: 1))
                }

                Button("Go to Settings") {
                    path.append(.settings)
                }
            }
            .navigationTitle("Main Menu")
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .home:
                    HomeView()
                case .details(let id):
                    DetailsView(id: id)
                case .settings:
                    SettingsView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
