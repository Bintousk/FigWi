//
//  File.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-26.


//struct ContentView: View {
//    init() {
//       UIPageControl.appearance().currentPageIndicatorTintColor = .red
//       UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
//       }
//    let horizontalScrollItems = ["wind", "hare.fill", "tortoise.fill", "rosette" ]
//
//
//    var body: some View {
//        GeometryReader { geometry in
//                   TabView(){
//                       ForEach(horizontalScrollItems, id: \.self) { symbol in
//                           Image(systemName: symbol)
//                               .font(.system(size: 200))
//                               .frame(width: geometry.size.width)
//                       }
//                   }
//                   .tabViewStyle(PageTabViewStyle())
//                   .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//
//    }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
////import SwiftUI
//
//struct PageControlView: UIViewRepresentable {
//    @Binding var currentPage: Int
//    @Binding var numberOfPages: Int
//
//    func makeUIView(context: Context) -> UIPageControl {
//        let uiView = UIPageControl()
//        uiView.backgroundStyle = .prominent
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//        return uiView
//    }
//
//    func updateUIView(_ uiView: UIPageControl, context: Context) {
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//    }
//}
//
//struct ContentView: View {
//    @State var isSheetUp = false
//
//    var body: some View {
//        Button("Present") {
//            isSheetUp.toggle()
//        }
//        .sheet(isPresented: $isSheetUp) {
//            Sheet()
//        }
//    }
//
//    struct Sheet: View {
//        @State var currentPage = 0
//        @State var numberOfPages = 3
//
//        var body: some View {
//            NavigationView {
//                ZStack {
//                    TabView(selection: $currentPage) {
//                        Page().tag(0)
//                        Page().tag(1)
//                        Page().tag(2)
//                    }
//                    // Comment this to switch layout issue
//                    .ignoresSafeArea(edges: .bottom)
//                    .tabViewStyle(.page(indexDisplayMode: .never))
//                    .indexViewStyle(.page(backgroundDisplayMode: .always))
//                    .navigationTitle("Title")
//                    .navigationBarTitleDisplayMode(.inline)
//
//                    VStack {
//                        Spacer()
//                        Text("bnv")
//                        PageControlView(currentPage: $currentPage, numberOfPages: $numberOfPages)
//                    }
//                }
//            }
//        }
//    }
//
//    struct Page: View {
//        var body: some View {
//            ScrollView {
//                VStack {
//                    Rectangle()
//                        .foregroundColor(.teal)
//                        .padding()
//                        .frame(minHeight: 10000)
//                }
//            }.background(Color.brown)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//




//
//  ContentView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-26.
//

//import SwiftUI
//
//struct PageControlView: UIViewRepresentable {
//    @Binding var currentPage: Int
//    @Binding var numberOfPages: Int
//
//    func makeUIView(context: Context) -> UIPageControl {
//        let uiView = UIPageControl()
//        uiView.backgroundStyle = .prominent
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//        return uiView
//    }
//
//    func updateUIView(_ uiView: UIPageControl, context: Context) {
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//
//    }
//
//}
//
//struct ContentView: View {
//    @State var isSheetUp = false
//    @State var currentPage = 0
//    @State var numberOfPages = 3
//    var body: some View {
//        NavigationView {
//            ZStack{
//                TabView(selection: $currentPage) {
//                    Page(p: "page1").tag(0).rotationEffect(.degrees(-90))
//                    Page(p:"Page2").tag(1).rotationEffect(.degrees(-90))
//                    Page(p: "page3").tag(2).rotationEffect(.degrees(-90))
//                }.rotationEffect(.degrees(90))
//                // Comment this to switch layout issue
//                .ignoresSafeArea(edges: .bottom)
//                .tabViewStyle(.page(indexDisplayMode: .never))
//                .indexViewStyle(.page(backgroundDisplayMode: .always))
//                .navigationTitle("Title")
//                .navigationBarTitleDisplayMode(.inline)
//
//                HStack {
//                    PageControlView(currentPage: $currentPage, numberOfPages: $numberOfPages).rotationEffect(.degrees(90.0))
//                }
//            }
//        }
//    }
//
//
//    struct Page: View {
//        var p: String;
//        var body: some View {
//
//                VStack {
//                    HStack{
//                        Text(p)
//
//                    }
//                        .foregroundColor(.teal)
//                        .padding()
//                        .frame(minWidth: 500, idealWidth: 1000, maxWidth: 1000, minHeight: 1000, idealHeight: 1000, maxHeight: 1000)
//            }.background(Color.brown)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//

//
//  ContentView.swift
//  FigWi
//
//  Created by Bintou Seni on 2022-04-26.
//

//import SwiftUI
//
//struct PageControlView: UIViewRepresentable {
//    @Binding var currentPage: Int
//    @Binding var numberOfPages: Int
//
//    func makeUIView(context: Context) -> UIPageControl {
//        let uiView = UIPageControl()
//        uiView.backgroundStyle = .prominent
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//        return uiView
//    }
//
//    func updateUIView(_ uiView: UIPageControl, context: Context) {
//        uiView.currentPage = currentPage
//        uiView.numberOfPages = numberOfPages
//       
//    }
//
//}
//
//struct ContentView: View {
//    
//    var body: some View {
//        VStack {
//           
//            HStack {
//                TabView(){
//                        Page2()
//                        Page()
//                       
//                       
//                }.background(Image("Tabpink").rotationEffect(.degrees(180)).frame(width: 350, height: 350))
//                    .frame(width: 350, height: 350)
//                    .tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//                    .rotationEffect(.degrees(-90))
//                .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            }
//            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            
//            HStack{
//                
//
//                Spacer()
//                VStack{
//                    Spacer()
//                    NavigationLink(destination: Page) {
//                        Button {
//                            
//                        } label: {
//                            Image("Calcul").resizable().frame(width: 150, height: 150)
//                    }
//                    }
//                   
//                    Spacer()
//                    Button {
//                        
//                    } label: {
//                        Image("Reminder").resizable().frame(width: 150, height: 150)
//
//                    }
//                    Spacer()
//                }
//                Spacer()
//                VStack{
//                    Spacer()
//                    Button {
//                        
//                    } label: {
//                        Image("Goal").resizable().frame(width: 150, height: 150)
//
//                    }
//                    Spacer()
//                    Button {
//                        
//                    } label: {
//                        Image("Add").resizable().frame(width: 150, height: 150)
//
//                    }
//                    Spacer()
//
//                }
//                Spacer()
//            }
//            
//            
//
//        }
//    }
//}
//
//
//struct MainPage: View {
//    var body: some View {
//        VStack{  Text("Hello, world!")
//                .padding()
//            
//            NavigationLink(destination: BimCalcul().transition(.scale)) {
//                Text("aller a la page 2")
//                    .transition(/*@START_MENU_TOKEN@*/.opacity/*@END_MENU_TOKEN@*/)
//            }
//            
//            
//            
//        }
//    }
//    
//}
//
//
//struct Page: View {
//      
//        var body: some View {
//         
//                
//            VStack{
//                Image("Title").resizable().frame(width: 200, height: 30)
//                Spacer()
//                Text("this section is a mock of a the resume of a section ex:  goals ")
//                Spacer()
//            }.foregroundColor(.teal).rotationEffect(.degrees(90)).padding()
//            
//            
//                
//        }
//    }
//struct Page2: View {
//    
//        var body: some View {
//         
//                
//                    VStack{
//                        Image("Title").resizable().frame(width: 200, height: 30)
//                        Spacer()
//                        Text("this section is a mock of a the resume of a section ex: the reminder")
//                        Spacer()
//                    }.foregroundColor(.teal).rotationEffect(.degrees(90)).padding()
//            
//                
//        }
//    }
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
