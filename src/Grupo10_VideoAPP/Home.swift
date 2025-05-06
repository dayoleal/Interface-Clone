//
//  Home.swift
//  Grupo10_VideoAPP
//
//  Created by Camila Toniato e Dayô Araújo on 11/04/25.
//
import Foundation
import SwiftUI

struct Home: View {
    let sizeCircle : CGFloat = 70
    let symbolSize : CGFloat = 18
    
    var body: some View {
        VStack {
            // tool bar
            HStack {
                ZStack() {
                    Rectangle()
                        .foregroundStyle(.black)
                        .frame(width: 400, height: sizeCircle)
                    HStack {
                        HStack{
                            Button(
                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 77.3)
                                            .foregroundStyle(.deepGray)
                                            .frame(width: 77.3, height: 40)
                                        HStack{
                                            Image(systemName: "music.note.list")
                                                .font(.system(size: 13))
                                                .foregroundStyle(.lightGray)
                                            Text("Tudo")
                                                .font(.system(size: 13))
                                                .foregroundStyle(.lightGray)
                                        }
                                    }
                                }
                            )
                            Button(
                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 77.3)
                                            .foregroundStyle(.deepGray)
                                            .frame(width: 103.5, height: 40)
                                        HStack{
                                            Image(systemName: "square.and.arrow.down")
                                                .font(.system(size: 13))
                                                .foregroundStyle(.lightGray)
                                            
                                            Text("Baixados")
                                                .font(.system(size: 13))
                                                .foregroundStyle(.lightGray)
                                            
                                        }
                                    }
                                }
                            )
                        }
                        Spacer()
                        HStack {
                            Button(
                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                label: {
                                    ZStack {
                                        Circle()
                                            .frame(width: 40, height: 40)
                                            .foregroundStyle(.deepGray)
                                        Image(systemName: "heart")
                                            .font(.system(size: 13))
                                            .foregroundStyle(.lightGray)
                                    }
                                })
                            
                            Button(
                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                label: {
                                    ZStack {
                                        Circle()
                                            .frame(width: 40, height: 40)
                                            .foregroundStyle(.deepGray)
                                        Image(systemName: "magnifyingglass")
                                            .font(.system(size: 13))
                                            .foregroundStyle(.lightGray)
                                    }
                                })
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                }
            }
            // main content
            ScrollView {
                VStack {
                    // genre scroll view (buttons)
                    ScrollView([.horizontal]) {
                        HStack {
                            genre(symbol: "figure.dance", symbolSize: symbolSize, label: "Pop", sizeCircle: sizeCircle)
                                .padding(.leading, 20)
                            
                            genre(symbol: "guitars.fill", symbolSize: symbolSize, label: "Rock", sizeCircle: sizeCircle)
                            
                            genre(symbol: "figure.socialdance", symbolSize: symbolSize, label: "Sertanejo", sizeCircle: sizeCircle)
                            
                            genre(symbol: "crown.fill", symbolSize: symbolSize, label: "Rap", sizeCircle: sizeCircle)
                            
                            genre(symbol: "sunglasses.fill", symbolSize: symbolSize, label: "Funk", sizeCircle: sizeCircle)
                            
                            genre(symbol: "figure.dance", symbolSize: symbolSize, label: "Pop", sizeCircle: sizeCircle)
                        }.padding(.top, 20)
                    }
                    
                    // big scroll view label
                    HStack {
                        descriptor(frase: "Em Destaque", textSize: 20, leading: 20, top: 40.5)
                    }
                    
                    // big scroll, image view
                    ScrollView ([.horizontal]) {
                        HStack{
                            bigScroll(leading: 20, imgName: "cazuza_clip")
                            Spacer()
                            
                            bigScroll(leading: 1, imgName: "tyler_clip")
                            bigScroll(leading: 1, imgName: "redvelvet_clip")
                        }
                    }
                    
                    // Separator Line
                    separatorLine()
                    
                    // Pop scroll label
                    HStack {
                        descriptor(frase: "Top Brasil", textSize: 20, leading: 20, top: 20)
                        
                        seeAll(top: 20, trailing: 20)
                    }
                    // Pop scroll, image view (small)
                    ScrollView ([.horizontal]) {
                        HStack {
                            VStack {
                                smallScroll(leading: 20, leadingText: 0, top: 4, imgName: "milton_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "liniker_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "jorge_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "marina_clip")
                            }
                            
                        }
                    }
                    
                    // separator line
                    separatorLine()
                    
                    // static banner
                    Image("chart")
                        .resizable()
                        .frame(width: 355, height: 135.8)
                        .padding(.leading, 1)
                        .padding(.top, 20)
                    
                    // separator line
                    separatorLine()
                    
                    // Rap scroll label
                    HStack {
                        descriptor(frase: "Top Mundial", textSize: 20, leading: 20, top: 20)
                        
                        seeAll(top: 20, trailing: 20)
                    }
                    
                    // Rap scroll, image view (small)
                    ScrollView ([.horizontal]) {
                        HStack {
                            VStack {
                                smallScroll(leading: 20, leadingText: 20, top: 4, imgName: "kendrick_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "ladyGaga_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "weeknd_clip")
                            }
                            VStack {
                                smallScroll(leading: 0.2, leadingText: 0, top: 4, imgName: "bruno_clip")
                            }
                        }
                    }
                } // main vstack closure
            } // main scroll view closure
        } // view closure
    } // vstack closure
} // struct closure

#Preview {
    Home()
}

