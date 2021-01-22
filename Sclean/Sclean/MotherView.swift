//
//  MotherView.swift
//  Sclean
//
//  Created by Danica Vladić on 08/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import SwiftUI

struct MotherView : View {   // a root view that controls which other view will be shown using ViewRouter, see SceneDelegate.swift
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @ViewBuilder   // add views when new content is needed
    var body: some View {
        
            if viewRouter.currentPage == "startPage" {   // first default view to be shown, see ViewRouter.swift
            StartView()
            }
            else if viewRouter.currentPage == "loginPage" {   // a view that shows login page
                LoginView()
            } else if viewRouter.currentPage == "signUpFormPage" {   // a view that shows sign up form page
                SignUpFormView()
                    .transition(.scale)
            } else if viewRouter.currentPage == "signUpPage" {   // a view that shows options to select when signing up (skin type, etc.)
                SignUpView()
                    .transition(.scale)   // transitions can be changed, this is an example, i don't know what scale means
            } else if viewRouter.currentPage == "mainPage" {   // a view that is shown after a user is logged in
                MainView()
            } else if viewRouter.currentPage == "loginPageSpeech" {
                LoginViewSpeech()
        }
        }
    }

struct MotherView_Previews : PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

