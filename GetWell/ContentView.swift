//
//  ContentView.swift
//  GetWell
//
//  Created by Dai Fahad ALTamimi on 11/01/2023.
//

import SwiftUI
struct ContentView: View {
    @State private var showingCredits = false
    @State private var showingCredits2 = false
    @State private var showingCredits3 = false
    @State private var showingCredits4 = false
    @State private var showingCredits5 = false
    @State private var name: String = ""
    
    var body: some View {
        
        
//The first medication
        ZStack{
            Color("Color1").edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    
                    HStack{
                        
                        ZStack{
                            
                            TextField("search", text: $name)
                            
                                .offset(x:35)
                            
                                .frame(width: 348,height: 40)
                            
                                .font(.headline)
                                .background(Color.gray.opacity(0.1).cornerRadius(15))
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .offset(x:-155)
                            }
                            
                            
                            
                        }
                        
                    }
                    
                    
                    Image("GetWell Logo 1")
                    
                    ScrollView {
                        
                        VStack(spacing:17){
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.white)
                                    .frame(width: 348, height: 120)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 2.4)
                                
                                HStack(spacing: 50)
                                {
                                    
                                    
                                    VStack(alignment:.leading,spacing:3){
                                        
                                        Text("Panadol")
                                            .bold()
                                            .font(Font.title3)
                                            .foregroundColor(Color("Color"))
                                        Text("Category Of Panadol")
                                            .font(Font.callout)
                                        Text("Analgesic & Antipyretic")
                                            .font(Font.callout)
                                        
                                        Button("Use For") {
                                            showingCredits.toggle()
                                            
                                        }
                                        .sheet(isPresented: $showingCredits) {
                                            VStack(alignment:.center,spacing:17){
                                                Image("Panadol 1")
                                                
                                                
                                                
                                                VStack(alignment:.leading,spacing:9){
                                                    Text("What to Know Before Use")
                                                        .font(.title3)
                                                        .bold()
                                                        .foregroundColor(Color("Color"))
                                                    Text("•Children under 10 years: Do not give Paracetamol tablets to children below 10 years of age.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Do not give this medication to children for more than 3 days without talking to the doctor first.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    
                                                    Text("•Take a tablet with or without food.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Take a tablet with a full glass of water.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Do not take a double dose (two doses at the same time) to make up for the forgotten dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                }
                                                .padding(.horizontal,20)
                                                .presentationDetents([.medium, .large])
                                            }
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    
                                    Image("Panadol")
                                }
                                
                                
                                
                            }
                            
                            
                            
    //The second medicine
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                
                                    .foregroundColor(Color.white)
                                    .frame(width: 348, height: 120)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 2.4)
                                
                                HStack(spacing:50){
                                    VStack(alignment:.leading,spacing:3){
                                        
                                        Text("Mentex")
                                            .multilineTextAlignment(.trailing)
                                            .bold()
                                            .font(Font.title3)
                                            .foregroundColor(Color("Color"))
                                        Text("Category Of Mentex Syrup")
                                            .font(Font.callout)
                                        Text("Cough Syrup")
                                            .font(Font.callout)
                                        
                                        Button("Use For") {
                                            showingCredits2.toggle()
                                            
                                        }
                                        .sheet(isPresented: $showingCredits2) {
                                            VStack(alignment:.center,spacing:17){
                                                Image("Mentex 1")
                                                VStack(alignment:.leading,spacing:9){
                                                    Text("What to Know Before Use")
                                                        .font(.title3)
                                                        .multilineTextAlignment(.trailing)
                                                        .bold()
                                                        .foregroundColor(Color("Color"))
                                                    
                                                    
                                                    Text("•Always take this medicine exactly as your doctor or pharmacist has told you.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Shake well before uses")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•The average doses:")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("1-Adults: 1 teaspoonful 3 times daily or as directed by a physician.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("2-Children (6 years and above): according to age, ½ to one teaspoonful, 2-3 times daily or as directed by a physician.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you forget to take a dose, take it as soon as you remember it unless it is nearly time for your next dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                }
                                                
                                                
                                            }
                                            .presentationDetents([.medium, .large])
                                            .padding(.horizontal,20)
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    Image("Mentex")
                                }
                                
                            }
                            
                            
//The third medicine
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                
                                    .foregroundColor(Color.white)
                                    .frame(width: 348, height: 120)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 2.4)
                                
                                HStack(spacing:50){
                                    VStack(alignment:.leading){
                                        
                                        Text("Defonase")
                                            .multilineTextAlignment(.trailing)
                                            .bold()
                                            .font(Font.title3)
                                            .foregroundColor(Color("Color"))
                                        
                                        Text("Category Of Defonase Syrup")
                                            .font(Font.callout)
                                        Text("Allergy & Cold Drugs")
                                            .font(Font.callout)
                                        
                                        Button("Use For") {
                                            showingCredits3.toggle()
                                            
                                        }
                                        .sheet(isPresented: $showingCredits3) {
                                            VStack(alignment:.center,spacing:17){
                                                Image("Defonase 1")
                                                VStack(alignment:.leading,spacing:9){
                                                    Text("What to Know Before Use")
                                                        .font(.title3)
                                                        .multilineTextAlignment(.trailing)
                                                        .bold()
                                                        .foregroundColor(Color("Color"))
                                                    
                                                    
                                                    Text("•Shake well before uses")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•It does not matter if you take loratadine/pseudoephedrine before or after food.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Doses may be changed in special conditions so always follow your doctor's or pharmacist's instructions.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you take more than you should, talk to a doctor or go to the hospital straight away.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Do not take a double dose (two doses at the same time) to make up for the forgotten dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you forget to take a dose, take it as soon as you remember it unless it is nearly time for your next dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    
                                                }
                                                
                                                
                                                .presentationDetents([.medium, .large])
                                                .padding(.horizontal,20)}
                                            
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    
                                    
                                    Image("Defonase")
                                }
                                
                                
                            }
                            
//Fourth medication
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                
                                    .foregroundColor(Color.white)
                                    .frame(width: 348, height: 120)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 2.4)
                                
                                HStack(spacing:50){
                                    VStack(alignment:.leading){
                                        
                                        Text("Relaxon")
                                            .multilineTextAlignment(.trailing)
                                            .bold()
                                            .font(Font.title3)
                                            .foregroundColor(Color("Color"))
                                        Text("Category Of Relaxon")
                                            .font(Font.callout)
                                        Text("Muscle Relaxant Drugs")
                                            .font(Font.callout)
                                        
                                        Button("Use For") {
                                            showingCredits4.toggle()
                                            
                                        }
                                        .sheet(isPresented: $showingCredits4) {
                                            VStack(alignment:.center,spacing:17){
                                                Image("Relaxon 1")
                                                VStack(alignment:.leading,spacing:9){
                                                    Text("What to Know Before Use")
                                                        .font(.title3)
                                                        .bold()
                                                        .foregroundColor(Color("Color"))
                                                    
                                                    
                                                    Text("•Doses may change from patient to patient based on your age, your medical condition, and whether or not you are taking other medicines, so always follow your physician's instruction")
                                                        .font(.system(size: 13,weight: .regular))
                                                    Text("•The usual adult dosage is one to two capsules to be taken 3 times daily.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Doses may be changed in special conditions so always follow your doctor's or pharmacist's instructions.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you take more than you should, talk to a doctor or go to the hospital straight away.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Do not take a double dose (two doses at the same time) to make up for the forgotten dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you forget to take a dose, take it as soon as you remember it unless it is nearly time for your next dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    
                                                    
                                                }
                                                .presentationDetents([.medium, .large])
                                                .padding(.horizontal,20)
                                            }
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    Image("Relaxon")
                                }
                                
                                
                                
                            }
                            
//Fifth medication
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                
                                    .foregroundColor(Color.white)
                                    .frame(width: 348, height: 120)
                                    .foregroundColor(.gray)
                                    .shadow(radius: 2.4)
                                
                                HStack(spacing:50){
                                    VStack(alignment:.leading){
                                        
                                        Text("Scopinal")
                                            .multilineTextAlignment(.trailing)
                                            .bold()
                                            .font(Font.title3)
                                            .foregroundColor(Color("Color"))
                                        Text("Category Of Scopinal")
                                            .font(Font.callout)
                                        Text("spasmolytic drugs")
                                            .font(Font.callout)
                                        
                                        Button("Use For") {
                                            showingCredits5.toggle()
                                            
                                        }
                                        .sheet(isPresented: $showingCredits5) {
                                            VStack(alignment:.center,spacing:17){
                                                Image("Scopinal 1")
                                                VStack(alignment:.leading,spacing:9){
                                                    Text("What to Know Before Use")
                                                        .font(.title3)
                                                        .bold()
                                                        .foregroundColor(Color("Color"))
                                                    
                                                    
                                                    Text("•This medicine is intended for adults and children 6 years and older.")
                                                        .font(.system(size: 13,weight: .regular))
                                                    Text("•Take with or without food.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Swallow tablets whole. Do not break or chew.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Doses may be changed in special conditions so always follow your doctor's or pharmacist's instructions.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•If you take more than you should, talk to a doctor or go to the hospital straight away.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    Text("•Do not take a double dose (two doses at the same time) to make up for the forgotten dose.")
                                                        .font(.system(size: 13,weight: .regular))
                                                        .font(Font.callout)
                                                    
                                                    
                                                }
                                                .presentationDetents([.medium, .large])
                                                .padding(.horizontal,20)
                                            }
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    Image("Scopinal")
                                }
                                
                                
                                
                            }
                            
                        }
                    }
                    
                }
                
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
