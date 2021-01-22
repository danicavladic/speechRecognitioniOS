//
//  SpeechSingleton.swift
//  Sclean
//
//  Created by Danica Vladić on 10/04/2020.
//  Copyright © 2020 Danica Vladić. All rights reserved.
//

import Foundation
import Speech

class SpeechSingleton {
    
    static let shared = SpeechSingleton()
    
    var audioEngine: AVAudioEngine = AVAudioEngine()
    var speechRecognizer: SFSpeechRecognizer? = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
    var request: SFSpeechAudioBufferRecognitionRequest = SFSpeechAudioBufferRecognitionRequest()
    var recognitionTask: SFSpeechRecognitionTask? = nil
    var bestString: String = ""
    
     private init() {
        audioEngine = AVAudioEngine()
        speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
        request = SFSpeechAudioBufferRecognitionRequest()
        recognitionTask = nil
        bestString = ""
    }
    
    func recordAndRecognizeSpeech() {
        
        let node = audioEngine.inputNode
        let recordingFormat = node.outputFormat(forBus: 0)
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
            self.request.append(buffer)
        }
        
        audioEngine.prepare()
        do {
            try audioEngine.start()
        } catch {
            return print(error)
        }
        
        guard let myRecognizer = SFSpeechRecognizer() else {
            print("Error - the recognizer is not supported for the given locale.")
            return
        }
        if !myRecognizer.isAvailable {
            print("Error - the recognizer is not available at the moment.")
            return
        }
        
         recognitionTask = speechRecognizer?.recognitionTask(with: request, resultHandler: { result, error in
         if let result = result {
            self.bestString = result.bestTranscription.formattedString
            print(self.bestString)
         } else if let error = error {
         print(error)
         }
         })
    }
    
    func stopRecording() {
        request.endAudio()
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)
        recognitionTask = nil
    }
    
}
