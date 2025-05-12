//
//  HomeView.swift
//  SwiftUINavigationStack
//
//  Created by Chee Ket Yung on 12/05/2025.
//
import SwiftUI

struct DetailsView: View {
    let id: Int

    var body: some View {
        VStack {
            Text("Details for item #\(id)")
            // Simulate deeper navigation
            NavigationLink("Go Home", value: Screen.home)
        }
        .navigationTitle("Details")
    }
}
