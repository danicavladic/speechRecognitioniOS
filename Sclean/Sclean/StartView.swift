//
//  StartView.swift
//  Sclean
//
//  Created by Danica Vladić on 09/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import SwiftUI
import AVFoundation
import Speech

struct StartView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var spoken: String = ""
    
    var body: some View {
        VStack {
            Text("Would you like to turn on a voice assistant? Answer with yes or no.").foregroundColor(.white).onAppear {
                self.spoken = "Would you like to turn on a voice assistant? Answer with yes or no."
                speechSynthesis(spoken: self.spoken)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(5000)) {
                let speech = SpeechSingleton.shared
                speech.recordAndRecognizeSpeech()
                    
                DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(3000)) {
                  if speech.bestString == "Yes" {
                    print("yes") // go to instruction view
                    speech.stopRecording()
                    self.viewRouter.currentPage = "loginPageSpeech"
                } else if speech.bestString == "No" {
                    print("no")
                    speech.stopRecording()
                    self.viewRouter.currentPage = "loginPage"
                } else {
                    print("wrong answer")
                    speech.stopRecording()
                    }
                    }
                }
                }.multilineTextAlignment(.center)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Image("green"))
    }
}

func speechSynthesis(spoken: String) {
       let utterance = AVSpeechUtterance(string: spoken)
          utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
          utterance.rate = 0.4
          let synthesizer = AVSpeechSynthesizer()
          synthesizer.speak(utterance)
   }

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView().environmentObject(ViewRouter())
    }
}
