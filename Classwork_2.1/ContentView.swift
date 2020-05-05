//
//  ContentView.swift
//  Classwork_2.1
//
//  Created by Nour El-Sharkawi on 5/4/20.
//  Copyright © 2020 Nancy El-Sharkawi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter : [String] = ["0", "0", "0"]
    var body: some View {
        VStack {
            ThekrButton(counter: $counter)
            ThekrButton(counter: $counter)
            ThekrButton(counter: $counter)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ThekrButton: View {
    @Binding var counter: [String]
    var body: some View {
        HStack {
            Text("الله لا إله إلا هو").font(.largeTitle)
            Button(action: {
                self.counter[0] = String(Int(self.counter[0])! + 1)
            })
            {
                Text(counter[0]).font(.largeTitle).frame(width: 50, height: 50, alignment: .center).foregroundColor(.white)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
            }
            
        }
    }
}
