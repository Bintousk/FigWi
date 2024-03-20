//
//  Main.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-30.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink (destination: AddView(), label: {
                    Text("Add")
                })
                NavigationLink (destination: DataView(), label: {
                    Text("View")
                })
                NavigationLink (destination: EditView(), label: {
                    Text("View")
                })
                Button(action: {
                    LocalStorage.removeValue()
                }, label: {
                    Text("Delete")
                })
            }
        }
    }
}

struct AddView: View {
    
@State var value: String = ""
    var body: some View {
        VStack {
            TextField("Enter value", text: $value)
         
            Button(action: {
                LocalStorage.myValue = self.value
            }, label: {
                Text("Save")
            })
        }
    }
}
struct DataView: View {
    
    var body: some View {
        VStack {
           
         
            Text(LocalStorage.myValue)
        }
    }
}
struct EditView: View {
    @State var value: String = ""
    var body: some View {
        VStack {
            TextField("Enter value", text: $value)
            Button(action: {
                LocalStorage.myValue = self.value
            }, label: {
                Text("Update")
            })
        }
        .onAppear(perform: {
            self.value = LocalStorage.myValue
        })
    }
}

struct Main__Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
