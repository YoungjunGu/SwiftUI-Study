//
//  ContentView.swift
//  Project1-Landmarkds
//
//  Created by youngjun goo on 2019/10/01.
//  Copyright © 2019 youngjun goo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Gaki")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("iOS Developer")
                        .font(.subheadline)
                    Spacer()
                    Text("Korea")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
