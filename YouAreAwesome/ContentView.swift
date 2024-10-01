//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Will Schweitzer on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
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
                    
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.pink)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                    Spacer()
                    
                    
                    Button("Show Message") {
                        let messageArray = ["You Are Awesome!", "You are Amazing!", "You are a Code Monster!", "I love you!", "You make me so happy :).", "Have a great day!"]
                        
                        let messageNumber = Int.random(in: 0...messageArray.count - 1)
                        messageString = messageArray[messageNumber]
                        //messageIndex = (messageIndex == messageArray.count - 1) ? 0 : messageIndex + 1
                        
                        
                        // let imageName1 = "image0"
                        // let imageName2 = "image1"
                        
                        imageName = "image\(Int.random(in: 0...9))"
                        
//                        imageNumber += 1
//                        
//                        if (imageNumber > 9) {
//                            imageNumber = 0
//                        }

                        // messageString = (messageString == message1 ? message2 : message1)
                        // imageName = (imageName == imageName1 ? imageName2 : imageName1)
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
