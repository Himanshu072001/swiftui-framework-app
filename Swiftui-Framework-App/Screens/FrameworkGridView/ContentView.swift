//
//  ContentView.swift
//  Swiftui-Framework-App
//
//  Created by Himanshu Kesharwani on 24/07/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.self) {framework in
                        TitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Framework")
        }
        .sheet(isPresented: $viewModel.isShowingDetailView, content: {
            DetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                       isShowingDetailView: $viewModel.isShowingDetailView)
        })
    } 
}

#Preview {
    FrameworkGridView()
}

/// Title View
struct TitleView: View {
    var framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.7)
        }
        .padding()
    }
}
