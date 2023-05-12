//
//  ButtonStyles.swift
//  charizzma-ios
//
//  Created by Vincent Carrancho on 5/11/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.foregroundColor(.white)
            .font(Font.body.weight(Font.Weight.regular))
            .padding(8)
            .padding(.horizontal, 10)
            .background(configuration.isPressed ? Color.theme.primaryOnPressed : .theme.primary)
            .cornerRadius(10)
    }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.foregroundColor(.theme.primary)
            .font(Font.body.weight(Font.Weight.regular))
            .padding(8)
            .padding(.horizontal, 10)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.theme.primary, lineWidth: configuration.isPressed ? 2 : 1)
            )
    }
}

struct FadedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.foregroundColor(Color.theme.primary)
            .font(Font.body.weight(Font.Weight.regular))
            .padding(10)
            .padding(.horizontal, 23)
            .background(Color.theme.primary.opacity(configuration.isPressed ? 0.2 : 0.15))
            .cornerRadius(10)
    }
}
