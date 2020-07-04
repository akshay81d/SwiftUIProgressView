//
//  ProgressView.swift
//  SwiftUIProgressBar
//
//  Created by Akshay Dochania on 04/07/20.
//  Copyright © 2020 app-developerz. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
    @State var progress: CGFloat = 0.01
    
    var body: some View {
        VStack {
            Spacer()
            Text("ProgressView")
            Spacer()
            Slider(value: $progress, in: 0...1, step: 0.01)
                .padding()
            Spacer()
            ZStack {
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.green, lineWidth: 50)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                    .animation(.default)

                Text("\(Int(progress*100))%")

            }
            Spacer()
            Spacer()
            
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
