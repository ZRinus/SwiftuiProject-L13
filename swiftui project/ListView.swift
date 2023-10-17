//
//  ListView.swift
//  swiftui project
//
//  Created by Rinat Zaripov on 10.09.2023.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name = ""
    var surname = ""
    var image = ""
}

struct PersonRow: View {
    
    var person: Person
    
    var body: some View {
            HStack {
                Image(person.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90.0, height: 90.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack(alignment: .leading){
                    Text(person.name)
                    Text(person.surname)
            }
        }
    }
}


struct ListView: View {
    
    var persons = [Person(name: "Ata", surname: "Tesl", image: "image1"),
                   Person(name: "Car", surname: "Toyo", image: "image2")]
    
    var body: some View {
        
        NavigationView {
            List (persons) { item in
                NavigationLink(destination: ContentView(person: item)) {
                    PersonRow(person: item)
                }
            }
            .navigationTitle("List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
