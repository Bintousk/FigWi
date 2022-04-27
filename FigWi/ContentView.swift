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

struct PageControlView: UIViewRepresentable {
    @Binding var currentPage: Int
    @Binding var numberOfPages: Int

    func makeUIView(context: Context) -> UIPageControl {
        let uiView = UIPageControl()
        uiView.backgroundStyle = .prominent
        uiView.currentPage = currentPage
        uiView.numberOfPages = numberOfPages
        return uiView
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
        uiView.numberOfPages = numberOfPages
       
    }

}

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView{
               
                     MainPage()
                    
            }
        }
        
                
            
        }
}



struct MainPage: View {
    var body: some View {
                               VStack {
                           
                           HStack {
                             
                               ZStack{
                                   Image("Tabpink").frame(width: 350, height: 350)
                                   TabView(){
                                           Page2()
                                           Page()
                                          
                                          
                                   }
                                       .frame(width: 330, height: 330)
                                       .tabViewStyle(PageTabViewStyle())
                                       .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                                       .rotationEffect(.degrees(-90))
                                   .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                               }
                               
                           }

                           
                           
                           HStack{
                               

                               Spacer()
                               VStack{
                                   Spacer()
                                   NavigationLink(destination: BmiCalul()){Image("Calcul").resizable().frame(width: 150, height: 150)}
                                   Spacer()
                                   NavigationLink(destination: Goal()){
                                       Image("Reminder").resizable().frame(width: 150, height: 150)
                                   }
                                  
                                   
                                   Spacer()
                               }
                               Spacer()
                               VStack{
                                   Spacer()
                                   NavigationLink(destination: Goal()){Image("Goal").resizable().frame(width: 150, height: 150)}
                                   Spacer()
                                   NavigationLink(destination: Goal()){
                                       Image("Add").resizable().frame(width: 150, height: 150)
                                   }
                                  
                                   
                                   Spacer()
                               }
                               Spacer()
                           }
                           
                           

                   }.hiddenNavigationBarStyle()
                   
                   
    }
}
struct Goal: View {
    var body: some View {
        NavigationView {
                       VStack {
                           Text("Hello World B")

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
struct BmiCalul: View {
    
    @State private var poidstr = ""
    @State private var taillestr = ""
    @State private var texte = ""
    //let transform = CGAffineTransform(rotationAngle: -30 * (.pi / 180))

    var body: some View {
       
            VStack {
                
                Spacer()
                Group {
                    VStack{
                        TextField(" Entrer votre taille (cm)", text:$taillestr).keyboardType(.numberPad).padding()
                            .frame(width: 300, height: 80)
                            .border(Color.secondary, width: 3)
                            .cornerRadius(3.0)
                        
                        
                        
                        Spacer()
                        TextField(" Entrer votre poid (kg)", text:$poidstr).keyboardType(.numberPad)
                            .padding()
                            .frame(width: 300, height: 80)
                            .border(Color.secondary, width: 3)
                            .cornerRadius(3.0)
                        
                        Spacer()
                        Button(action: {
                            let  poid : Double =  Double(poidstr) ?? 0
                            let  taille : Double = Double(taillestr) ?? 0
                            let tailles = (taille * taille)
                            let poids = poid * 10000
                            let imc : Double =  poids / tailles
                            let resultat = (imc * 100).rounded() / 100
                            
                            
                            
                            var categorie = ""
                            var conseil = ""
                            if resultat < 18.5{
                                categorie = "Poids insuffisant "
                                conseil = " "
                                
                            }
                            else if resultat < 25{
                                categorie = "Poids normal "
                                conseil = " "}
                            else if resultat < 30{
                                categorie = "Embonpoint "
                                conseil = " "}
                            else if resultat < 35{
                                categorie = "Obesite classe I "
                                conseil = " "}
                            else if resultat < 39{
                                categorie = "Obesite classe II"
                                conseil = " "}
                            else {
                                categorie = "Obesite classe III "
                                conseil = " "}
                            
                            
                            
                            texte = " Votre imc est  \(resultat)\n Vous êtes dans la categorie \(categorie)"
                            
                        }, label: {
                            Image("CalculButton").resizable().frame(width: 140.0, height: 70.0).cornerRadius(16.0/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/4)
                            
                        })
                        Spacer()
                    }
                }.frame(width: 300, height: 400)
                Text("\(texte)")
                Spacer()
            }.onTapGesture {
                hideKeyboard()
            }
    }
        }
        
        
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

