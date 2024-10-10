//
//  ContentView.swift
//  Memorize_PBS
//
//  Created by Bhaskara Sai Vamsi Krishna Padala on 10/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack
            {
                RoundedRectangle(cornerRadius: 50, style: .continuous)
                    .frame(width:230 , height: 70, alignment: .topLeading)
                Text("Memorize")
                    .font(.largeTitle)
                    .foregroundStyle(
                        AngularGradient(
                            gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]),
                            center: .center
                        )
                    )
                    .fontWeight(.heavy)
            }
            Spacer()
            Theme1View()
            Spacer()
            HStack{
                Button("Theme_1", systemImage: "lanyardcard.fill", action: {
                    print("clicked")
                })
                .padding()
                .labelStyle(.iconOnly)
                .font(.largeTitle)
                .foregroundStyle(Color.red)
                
                
                Button("Theme_1", systemImage: "lanyardcard.fill", action: {
                    print("clicked")
                })
                .padding()
                .labelStyle(.iconOnly)
                .font(.largeTitle)
                .foregroundStyle(Color.green)
                Button("Theme_1", systemImage: "lanyardcard.fill", action: {
                    print("clicked")
                })
                .padding()
                .labelStyle(.iconOnly)
                .font(.largeTitle)
                .foregroundStyle(Color.blue)

            }
            
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
