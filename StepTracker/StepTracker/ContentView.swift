//
//  ContentView.swift
//  StepTracker
//
//  Created by Anastasia Lenina on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                steps()
                    .padding()
                averages()
                    .padding()
            }
            .navigationTitle("Dashboard")
        }
    }

    @ViewBuilder
    func steps() -> some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Label("Steps", systemImage: "figure.walk")
                        .font(.title3.bold())
                        .foregroundStyle(.pink)
                    Text("Avg: 10K Steps")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.secondary)
                .frame(height: 150)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.secondarySystemBackground))

        }
    }

    @ViewBuilder
    func averages() -> some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Label("Averages", systemImage: "calendar")
                        .font(.title3.bold())
                        .foregroundStyle(.pink)
                    Text("Last 28 days")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.secondary)
                .frame(height: 240)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.secondarySystemBackground))

        }
    }
}


#Preview {
    ContentView()
}
