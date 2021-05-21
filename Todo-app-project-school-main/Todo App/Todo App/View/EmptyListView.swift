//
//  EmptyListView.swift
//  Todo App
//
//  Created by Macbook on 15/02/21.
//

import SwiftUI

//Mark: properties
struct EmptyListView: View {
    
    let image: [String] = [
        "illustration-no1",
        "illustration-no2",
        "illustration-no3"
    ]
    
    let tips: [String] = [
        "Gunakan waktumu dengan baik",
        "Gunakan waktumu dengan baik",
        "Gunakan waktumu dengan baik",
        "Gunakan waktumu dengan baik"
    ]
    
    var body: some View {
        ZStack{
            VStack{
                Image("\(image.randomElement() ?? self.image[0])")
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .layoutPriority(1)
                
                Text("\(tips.randomElement() ?? self.image[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline, design: .rounded))
                
            }//: VStack
        }//: Zstack
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
