//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Will Schweitzer on 9/16/24.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber: Int = -1
    @State private var messageNumber: Int = -1
    @State private var soundNumber: Int = -1
    @State private var audioPlayer: AVAudioPlayer!
    //@State private var messageIndex = 0
    
    var body: some View {
        ZStack {
            //            Rectangle()
            //                .fill(
            //                    Gradient(colors: [.orange, .yellow, .green])
            //                )
            //                .ignoresSafeArea()
            
            GeometryReader {geometry in
                VStack{
                    //                    Text("You have skills!")
                    //                        .font(.largeTitle)
                    //                        .fontWeight(.black)
                    //                        .foregroundColor(.white)
                    //                        .padding()
                    //                    //.background(Color("Maroon"))
                    //                        .cornerRadius(15)
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.pink)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                        .padding()
                    
                    Spacer()
                    
                    
                    //                    Image(systemName: "speaker.wave.3", variableValue: 0.0)
                    //                        .resizable()
                    //                        .scaledToFit()
                    //                        .symbolRenderingMode(.multicolor)
                    //                        .padding()
                    //                        .background(Color(hue: 0.517, saturation: 0.5, brightness: 0.968))
                    //                        .cornerRadius(30)
                    //                        .shadow(radius: 30, x: 20, y: 20)
                    //                        .overlay(
                    //                            RoundedRectangle(cornerRadius: 30)
                    //                                .stroke(.teal, lineWidth: 1)
                    //                        )
                    //                        .padding()
                    
                    
                    
                    Button("Show Message") {
                        let messageArray = ["You Are Awesome!", "You are Amazing!", "You are a Code Monster!", "I love you!", "You make me so happy :)", "Have a great day!"]
                        
                        var newMessageNumber = 0
                        var newImageNumber = 0
                        var newSoundNumber = 0
                        
                        repeat {
                            newMessageNumber = Int.random(in: 0...messageArray.count - 1)
                        } while messageNumber == newMessageNumber
                        
                        messageNumber = newMessageNumber
                        messageString = messageArray[messageNumber]
                        //messageIndex = (messageIndex == messageArray.count - 1) ? 0 : messageIndex + 1
                        
                        
                        // let imageName1 = "image0"
                        // let imageName2 = "image1"
                        
                        repeat {
                            newImageNumber = Int.random(in: 0...9)
                        } while imageNumber == newImageNumber
                        
                        imageNumber = newImageNumber
                        imageName = "image\(imageNumber)"
                        
//                        imageNumber += 1
//                        
//                        if (imageNumber > 9) {
//                            imageNumber = 0
//                        }

                        // messageString = (messageString == message1 ? message2 : message1)
                        // imageName = (imageName == imageName1 ? imageName2 : imageName1)
                        
                        repeat {
                            newSoundNumber = Int.random(in: 0...5)
                        } while soundNumber == newImageNumber
                        
                        soundNumber = newSoundNumber
                        
                        let soundName = "sound\(soundNumber)"
                        
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("😡 Could not read file name \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer.")
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    //.border(.purple, width: 5)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
