//
//  theme.swift
//  charizzma-ios
//
//  Created by Vincent Carrancho on 5/9/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    let primary = Color("PrimaryColor")
    let background = Color("BackgroundColor")
    
    let warning = Color("Warning")
    let error = Color("Error")
    let sucess = Color("Success")
    
    let textPrimary = Color("TextPrimary")
    let textSecondary = Color("TextSecondary")
    let textHelper = Color("TextHelper")
    
    let primaryOnPressed = Color("PrimaryOnClicked")
}
