//
//  MainView.swift
//  Sclean
//
//  Created by Danica Vladić on 09/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import SwiftUI

struct MainView: View {   // a view that is shown after a user is logged in
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Text("Login successful!")   // change
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(ViewRouter())
    }
}
