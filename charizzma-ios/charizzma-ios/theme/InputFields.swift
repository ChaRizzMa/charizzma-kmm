//
//  InputFields.swift
//  charizzma-ios
//
//  Created by Vincent Carrancho on 5/11/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct PrimaryTextInputStyle: TextFieldStyle {
    
    var inFocus: Bool
    
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
            .padding(10)
            .tint(.theme.primary)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 10).overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.theme.primary.opacity(inFocus ? 0.75: 0.25), lineWidth: 1)).animation(.easeIn(duration: 0.1), value: inFocus)
        }
}


