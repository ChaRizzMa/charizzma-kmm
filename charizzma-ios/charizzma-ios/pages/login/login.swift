//
//  login.swift
//  charizzma-ios
//
//  Created by Vincent Carrancho on 5/11/23.
//  Copyright © 2023 orgName. All rights reserved.
//

import SwiftUI

struct login: View {
    
    enum Field: Hashable {
        case username
        case password
    }
    
    @State var usernameInput = ""
    @State var passwordInput = ""
    @State var usernameInputEditing = false
    @FocusState private var focusedField: Field?
    
    func _onLogin() -> Void {
        // TODO: complete
    }
    
    func _onCreateAccount() -> Void {
        // TODO: complete
    }
    
    func _onForgetPassword() -> Void {
        // TODO: Complete
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack(alignment: .bottom) {
                Text("Login").font(.TITLE).foregroundColor(.theme.primary)
                Text("(with rizz)").font(.SUBTITLE)
            }
            
            TextField("Username", text: $usernameInput, onEditingChanged: {
                edit in
                    self.usernameInputEditing = edit
            }).textFieldStyle(PrimaryTextInputStyle(inFocus: usernameInputEditing))
            SecureField("Password", text: $passwordInput)
                .focused($focusedField, equals: .password)
                .textFieldStyle(PrimaryTextInputStyle(inFocus: focusedField == .password))
            
            Button {
                
            } label: {
                Text("Forgot your Password?").font(.caption).foregroundColor(.theme.primary).opacity(0.5)
            }
            
            
            HStack() {
                Button {
                    _onLogin()
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                }.buttonStyle(PrimaryButtonStyle())
                
                Button {
                    _onCreateAccount()
                } label: {
                    Text("Create Account")
                        .frame(maxWidth: .infinity)
                }.buttonStyle(SecondaryButtonStyle())
                
                
            }.padding(.top, 32.0).frame(maxWidth: .infinity)
            
            
        }
        .padding(.horizontal, 16.0)
        .padding(.bottom, 50)
    }
}

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
