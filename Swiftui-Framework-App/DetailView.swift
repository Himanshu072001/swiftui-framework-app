//
//  DetailView.swift
//  Swiftui-Framework-App
//
//  Created by Himanshu Kesharwani on 24/07/24.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            CancelButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            TitleView(framework: framework)
            Spacer()
            Text(framework.description)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                FrameworkButton(title: "Learn More",
                                textColor: .white,
                                backgroundColor: .red)
            }
            
            Spacer()
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)
                       ?? URL(string: "https://developer.apple.com")!)
        })
       
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
