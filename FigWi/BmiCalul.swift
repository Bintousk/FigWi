//
//  BmiCalul.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-27.
//
import SwiftUI
struct BmiCalul: View {
    
    @State private var poidstr = ""
    @State private var taillestr = ""
    @State private var texte = ""
    //let transform = CGAffineTransform(rotationAngle: -30 * (.pi / 180))

    var body: some View {
       
            VStack {
                    
                    Spacer()
                VStack {
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
                                    let result = CalculOfBMI(poidstr: poidstr, taillestr: taillestr)
                                    
                                    
                                    texte = " Votre imc est  \(result.0)\n Vous êtes dans la categorie \(result.1)"
                                    
                                }, label: {
                                    Image("CalculButton").resizable().frame(width: 140.0, height: 70.0).cornerRadius(16.0/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/4)
                                    
                                })
                                Spacer()
                            }
                    }.frame(width: 400, height: 400)
                    
                     VStack{
                         Text(texte != "" ? "\(texte)"  : "Veuillez entrer vos données")
                        
                     }
                }  .frame(width: 400, height: 600)
                   
                    
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 100).foregroundColor(Color(hue: 0.899, saturation: 0.009, brightness: 0.978)).shadow(color: .black, radius: 1, x: 0, y: 2)
                        HStack{
                            Spacer()
                            NavigationLink(destination: MainPage()) {
                                Image("Unknow").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                            }
                            Spacer()
                            NavigationLink(destination: MainPage()) {
                                Image("Home").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                            }
                            Spacer()
                            NavigationLink(destination: MainPage()) {
                                Image("Setting").resizable().frame(width: 45, height: 45).shadow(color: .black, radius: 2, x: 0, y: 1)
                            }
                            Spacer()
                        }
                    }.frame(width: 300, height: 50)
                    
                }.onTapGesture {
                    hideKeyboard()
                }
          
          
    
            
    }
        }
        

struct Bmi_Calul_Previews: PreviewProvider {
    static var previews: some View {
        BmiCalul()
    }
}

