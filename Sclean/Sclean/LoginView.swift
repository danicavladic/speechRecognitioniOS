//
//  LoginView.swift
//  Sclean
//
//  Created by Danica Vladić on 09/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    let storedUsername = "sclean"   // username fetched from database
    let storedPassword = "sclean123"   // password fetched from database
    
    @State var username: String = ""   // state variable to verify username
    @State var password: String = ""   // state variable to verify password
    
    @State var authenticationDidFail: Bool = false   // state variable to verify failed authentication
    @State var authenticationDidSucceed: Bool = false   // state variable to verify succeeded authentication
    
    @State var editingMode: Bool = false   // still don't know what this is
    
    var body: some View {
        
        VStack(spacing: 50) {
        VStack(spacing: 20) {
            
            LoginTextContent()
            UsernameTextField(username: $username, editingMode: $editingMode)
            PasswordSecureField(password: $password)
            
        if authenticationDidFail {
            Text("Information not correct. Try again.")
                .offset(y: -10)
                .foregroundColor(.red)
        }
    
        Button(action: {
            if self.username == self.storedUsername && self.password == self.storedPassword {
                self.authenticationDidSucceed = true
                self.authenticationDidFail = false
                        } else {
                self.authenticationDidFail = true }
                if self.authenticationDidSucceed {
                    self.viewRouter.currentPage = "mainPage"   // a view that is shown after a user is logged in
                        }
        }) {
            LoginButtonContent()
            }
            
        VStack(spacing: 1) {
            SignUpFormContent()
                
            Button(action: {self.viewRouter.currentPage = "signUpFormPage"}) {
            SignUpFormButtonContent() }
            }
        }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Image("green").resizable().opacity(0.7))
                .edgesIgnoringSafeArea(.all)
            }
        }

struct SignUpFormButtonContent : View {
    var body: some View {
        return Text("Sign up")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.3))
                    .multilineTextAlignment(.center)
                    .padding([.leading, .bottom, .trailing], 6.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                }
            }

struct LoginButtonContent : View {
    var body: some View {
        return Text("Log in")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.5))
                    .padding(.all, 6.0)
                    .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                    .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
                    .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
            }
        }

struct LoginTextContent : View {
    var body: some View {
        return Text("Log in")
                    .fontWeight(.thin)
                    .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.5))
    }
}

struct UsernameTextField : View {
    
    @Binding var username: String
    @Binding var editingMode: Bool
    
    var body: some View {
        return TextField("Username", text: $username, onEditingChanged: {edit in
            if edit == true
            {self.editingMode = true}
            else
            {self.editingMode = false}
        })
            .padding(.leading)
            .frame(width: 200.0, height: 30.0)
            .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
            .cornerRadius(10.0)
    }
}

struct PasswordSecureField : View {
    
    @Binding var password: String
    
    var body: some View {
        return SecureField("Password", text: $password)
            .padding(.leading)
            .frame(width: 200.0, height: 30.0)
            .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
            .cornerRadius(10.0)
    }
}
    
struct SignUpFormContent : View {
    var body: some View {
        return Text("Don't have an account?")
                   .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.5))
                   .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
            }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(ViewRouter())
    }
}
