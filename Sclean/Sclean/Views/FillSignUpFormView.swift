//
//  FillSingUpFormView.swift
//  Sclean
//
//  Created by Dora Franjic on 25/02/2020.
//  Copyright © 2020 Dora Franjic. All rights reserved.
//

/*import SwiftUI

struct FillSingUpFormView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

     var body: some View {
         
         VStack(spacing: 50) {
         VStack(spacing: 20) {
             
         Text("Sign up")
            .fontWeight(.thin)
            .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.5))
             
         TextField("Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.leading)
            .frame(width: 200.0, height: 30.0)
            .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
            .cornerRadius(10.0)
         
        TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.leading)
            .frame(width: 200.0, height: 30.0)
            .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
            .cornerRadius(10.0)
            
        TextField("Age", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding(.leading)
            .frame(width: 200.0, height: 30.0)
            .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
            .cornerRadius(10.0)
            }
            
        Button(action: {self.viewRouter.currentPage = "signUpPage"}) {
            NextButtonContent()
            }
    
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Image("backgroundlogin").resizable().opacity(0.7))
            .edgesIgnoringSafeArea(.all)
    }
}
    
struct NextButtonContent : View {
    var body : some View {
        return Text("Next")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(Color(red: 0.122, green: 0.204, blue: 0.923, opacity: 0.5))
                    .padding(.all, 6.0)
                    .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                    .border(Color(red: 0.969, green:0.898 , blue: 0.667, opacity: 1.0), width: 3)
                    .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                    }
                }

struct FillSingUpFormView_Previews: PreviewProvider {
    static var previews: some View {
        fillSignUpFormView().environmentObject(ViewRouter())
        }
    }
*/
