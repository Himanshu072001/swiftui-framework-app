//
//  Button.swift
//  Swiftui-Framework-App
//
//  Created by Himanshu Kesharwani on 24/07/24.
//

import Foundation
import SwiftUI

struct FrameworkButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundColor(textColor)
            .frame(width: 280, height: 54, alignment: .center)
            .background(backgroundColor)
            .cornerRadius(8.0)
    }
}


struct CancelButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 48, height: 48,alignment: .center)
            }
        }
    }
}
