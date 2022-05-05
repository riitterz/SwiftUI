//
//  ListView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct ListView: View {
    @State var fruits: [String] = [
        "apple",
        "orange",
        "banana",
        "peach"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add", action: {
                    fruits.append("Coconut")
                })
            )
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
