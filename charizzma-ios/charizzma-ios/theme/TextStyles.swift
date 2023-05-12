//
//  TextStyles.swift
//  charizzma-ios
//
//  Created by Vincent Carrancho on 5/11/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation
import SwiftUI

extension Font {
    public static var BODY: Font {
        return Font.system(size: 16, weight: .regular, design: .default)
    }
    
    public static var TITLE: Font {
        return Font.system(size: 34, weight: .bold, design: .default)
    }
    public static var SUBTITLE: Font {
        return Font.system(size: 22, weight: .regular, design: .default)
    }
}
