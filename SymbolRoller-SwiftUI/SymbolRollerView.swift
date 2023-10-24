//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Spacer() // spacer를 주니 전체view가 안움직임.
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Spacer() // spacer를 주니 전체view가 안움직임.
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            Button {
                imageName = symbols.randomElement()!
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath").font(.system(size: 30))
                    VStack {
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Text("Click me to reload").font(.system(size: 20, weight: .light, design: .default))
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .foregroundColor(.white)
            .background(.pink)
//            .cornerRadius(40)
            .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
