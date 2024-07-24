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
    var body: some View {
        VStack {
            CancelButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            TitleView(framework: framework)
            Spacer()
            Text(framework.description)
                .padding()
            Spacer()
            FrameworkButton(title: "Learn More",
                            textColor: .white,
                            backgroundColor: .red)
            Spacer()
        }
       
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
