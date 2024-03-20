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
            Text("Calcul your BMI")
            Spacer()
            VStack {
                Group {
                   
                    VStack{
                        TextField(" Enter your height. (cm)", text:$taillestr).keyboardType(.numberPad).padding()
                            .frame(width: 300, height: 80)
                            .border(Color.secondary, width: 3)
                            .cornerRadius(3.0)
                        
                        
                        
                        Spacer()
                        TextField(" Enter your weight. (kg)", text:$poidstr).keyboardType(.numberPad)
                            .padding()
                            .frame(width: 300, height: 80)
                            .border(Color.secondary, width: 3)
                            .cornerRadius(3.0)
                        
                        Spacer()
                        Button(action: {
                            hideKeyboard()
                            let result = CalculOfBMI(poidstr: poidstr, taillestr: taillestr)
                            
                            
                            texte = " Your BMI is  \(result.0)\n You are in the category \(result.1)"
                            
                        }, label: {
                            Image("CalculButton").resizable().frame(width: 140.0, height: 70.0).cornerRadius(16.0/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/4)
                            
                        })
                        Spacer()
                    }
                   
                }.frame(maxWidth: .infinity)
                    .frame(height: 400)
                   
                
                VStack{
                    Text(texte != "" ? "\(texte)"  : "Please enter your data.")
                    
                }
            }.frame(maxWidth: .infinity)
               
            
            
            Spacer()
            
            BottomBar()
        }
        .ignoresSafeArea(.all, edges: .bottom)

        
        
        
    }
}


struct Bmi_Calul_Previews: PreviewProvider {
    static var previews: some View {
        
         NavigationView{
             BmiCalul()
             
         }
        
        
    }
}

