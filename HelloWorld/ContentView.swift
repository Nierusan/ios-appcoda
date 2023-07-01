//
//  ContentView.swift
//  HelloWorld
//
//  Created by yvan on 30.06.23.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let synthesizer = AVSpeechSynthesizer()
        
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Stay Hungry, Stay Foolish")
                .fontWeight(.heavy)
                .font(.system(.title, design: .rounded))
        }
        .padding()
        
        Button {
            let utterance = AVSpeechUtterance(string: "Hello World")
            utterance.voice = AVSpeechSynthesisVoice(language: "fr-CH")
            
            synthesizer.speak(utterance)
            // What to perform
        } label: {
            // How the button looks like
            Text("Hello World")
                            .fontWeight(.bold)
                            .font(.system(.title, design: .rounded))
        }
        .foregroundColor(.white)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
