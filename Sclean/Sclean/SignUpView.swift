//
//  SignUpView.swift
//  Sclean
//
//  Created by Danica Vladić on 09/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
        @EnvironmentObject var viewRouter: ViewRouter
    
        var body: some View {
            
            VStack (spacing: 50) {
                VStack {
                HStack {
                Text("First, let us know your skin type...")
                    .foregroundColor(.white)
                    }
                }
                VStack(spacing: 5) {
                HStack(spacing: 5) {
                Image("normal")
                Image("oily")
                }
                HStack(spacing: 150) {
                Button(action: {}) {
                Text("normal")
                    .foregroundColor(.white)
                    }
                Button(action: {}) {
                Text("oily")
                    .foregroundColor(.white)
                    }
                }
                HStack(spacing: 5) {
                Image("dry")
                Image("combined")
                }
                HStack(spacing: 150) {
                Button(action: {}) {
                Text("dry")
                    .foregroundColor(.white)
                    }
                    
                Button(action: {}) {
                Text("combined")
                    .foregroundColor(.white)
                    }
                }
            }
                }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView().environmentObject(ViewRouter())
    }
}
