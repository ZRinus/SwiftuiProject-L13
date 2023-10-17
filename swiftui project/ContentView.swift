//
//  ContentView.swift
//  swiftui project
//
//  Created by Rinat Zaripov on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var person: Person
    
    @State var a = "54"
    @State var b = "2"
    @State var sum = 0
    
    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180.0, height: 180.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))

                Text(person.name)
                Text(person.surname)
            
            Text("sum = \(sum)")
            
            TextField("Enter a", text: $a)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 100.0)
            
            TextField("Enter b", text: $b)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 100.0)
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                sum = Int(a)! + Int(b)!
            }
            .foregroundColor(.red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(name: "Ata", surname: "Tesl", image: "image1"))
    }
}
