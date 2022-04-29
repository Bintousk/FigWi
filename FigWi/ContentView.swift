//
//  ContentView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-26.
//

import SwiftUI

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}



struct ContentView: View {
    
    var body: some View {
        VStack {
            NavigationView(){
               
                MainPage()
                    
            }
        }
        
                
            
    }
}

struct Reminder: View {
    @State var text: String = "Cette zone est specialement dediée a vos rappels de chose a faire ."
    var body: some View {
        NavigationView {
                       VStack {

                           TextEditor(text: $text)
                       }.navigationBarTitle("")
                       .navigationBarHidden(true)
                   }
    }
}
struct Add: View {
    var body: some View {
        NavigationView {
                       VStack {
                           Text("a suivre")

                       }.navigationBarTitle("")
                       .navigationBarHidden(true)
                   }
    }
}

struct Page: View {
      
        var body: some View {
         
                
            VStack{
                Image("Title").resizable().frame(width: 200, height: 30)
                Spacer()
                Text("this section is a mock of a the resume of a section ex:  goals ")
                Spacer()
            }.foregroundColor(.teal).rotationEffect(.degrees(90)).padding()
            
            
                
        }
    }
struct Page2: View {
    
        var body: some View {
         
                
                    VStack{
                        Image("Title").resizable().frame(width: 200, height: 30)
                        Spacer()
                        Text("this section is a mock of a the resume of a section ex: the reminder")
                        Spacer()
                    }.foregroundColor(.teal).rotationEffect(.degrees(90)).padding()
            
                
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
struct BmiCalul_Previews: PreviewProvider {
    static var previews: some View {
        BmiCalul()
    }
}

