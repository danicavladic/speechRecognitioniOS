//
//  ViewRouter.swift
//  Sclean
//
//  Created by Danica Vladić on 09/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "startPage" {   // first default page to be shown
        didSet {
            withAnimation() {
                objectWillChange.send(self)
            }
        }
    }
}


struct ViewRouter_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
