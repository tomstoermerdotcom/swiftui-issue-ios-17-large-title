//
//  ContentView.swift
//  swiftui-issue
//
//  Created by Tom Störmer on 19.03.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentingDetail: Bool = false
    
    var body: some View {
        VStack {
            Button("Present Detail") {
                isPresentingDetail = true
            }
        }
        .sheet(isPresented: $isPresentingDetail) {
            NavigationStack {
                ScrollView {
                    HStack {
                        Rectangle()
                            .foregroundStyle(.gray)
                    }
                }
                .navigationTitle("Title")
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingDetail = false
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
