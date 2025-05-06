//
//  Cantores.swift
//  Grupo10_VideoAPP
//
//  Created by Aluno Mack on 11/04/25.
//

import Foundation
import SwiftUI

struct Cantores: View {
    let sizeCircle : CGFloat = 60
    let symbolSize : CGFloat = 16
    
    var body: some View {
        VStack {
            // static tool bar
            ZStack {
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width: 400, height: sizeCircle)
                HStack {
                    // "all" button
                    HStack {
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 77.3)
                                        .foregroundStyle(.deepGray)
                                        .frame(width: 77.3, height: 30)
                                    HStack {
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
                    }
                    
                    Spacer()
                    // heart button
                    HStack {
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 30, height: 40)
                                        .foregroundStyle(.deepGray)
                                    Image(systemName: "heart")
                                        .font(.system(size: 13))
                                        .foregroundStyle(.lightGray)
                                }
                            })
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            
            // main scroll
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
                }
                
                HStack {
                    descriptor(frase: "Top artistas da semana", textSize: 18, leading: 20, top: 20)
                    seeAll(top: 20, trailing: 20)
                }
                // singers list
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "billieeilish_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "kendrick_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "chico_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "djavan_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "bad_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "taylor_profile")
                separatorList(width: 290, height: 1, leaning: 80)
                
                singersList(sizeCircle: sizeCircle, symbolSize : 15, top: 10, singerPhoto: "anitta_profile")
            }
        }
    }
}

#Preview {
    Cantores()
}
