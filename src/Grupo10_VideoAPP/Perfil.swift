//
//  TESTE.swift
//  Grupo10_VideoAPP
//
//  Created by Aluno Mack on 11/04/25.
//

import Foundation
import SwiftUI

struct Perfil: View {
    let sizeCircle : CGFloat = 60
    
    var body: some View {
        VStack {
            // static tool bar
            ZStack {
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width: 400, height: sizeCircle)
                HStack {
                    Spacer()
                    Text ("Perfil")
                        .font(.system(size: 23).bold())
                        .padding(.horizontal ,100)
                    // symbols
                    HStack {
                        // notification button
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                Image(systemName: "bell.badge.fill")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.lightGray)
                            })
                        // settings button
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                Image(systemName: "gearshape.fill")
                                    .font(.system(size: 20))
                                    .foregroundStyle(.lightGray)
                            })
                    }
                }
            }
            .padding(.trailing, 20)
            ScrollView {
                // main stack
                VStack {
                    // profile stack
                    ZStack {
                        Rectangle()
                            .foregroundColor(.darkGray)
                            .frame(width: 400, height: 170)
                        HStack {
                            HStack {
                                VStack (alignment: .leading){
                                    HStack {
                                        // profile photo button
                                        Button(
                                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                            label: {
                                                Image("djavan_profile")
                                                    .resizable()
                                                    .clipShape(Circle())
                                                    .frame(width: sizeCircle, height: sizeCircle)
                                                    .padding(.leading, 20)
                                            })
                                        // user information
                                        Button(
                                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                            label: {
                                                VStack (alignment: .leading){
                                                    Text("Nome Usuário")
                                                        .foregroundStyle(.white)
                                                    Text("nome@gmail.com")
                                                        .frame(width: 200)
                                                        .padding(.leading,-30)
                                                }
                                            })
                                        
                                        Spacer()
                                        
                                        HStack {
                                            Button(
                                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                                label: {
                                                    Image(systemName: "chevron.right")
                                                        .foregroundColor(.lightGray)
                                                        .padding(.trailing, 20)
                                                }
                                            )
                                        }
                                    }
                                    
                                    separatorList(width: 310, height: 1, leaning: 90)
                                        .padding(.bottom,20)
                                    
                                    HStack {
                                        // favorites button
                                        Button(
                                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                            label: {
                                                VStack {
                                                    Image(systemName: "heart.fill")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.neonYellow)
                                                    Text ("Favoritos( )")
                                                        .font(.system(size: 15.5))
                                                        .foregroundColor(.white)
                                                }.padding(.leading, 80)
                                            })
                                        
                                        Spacer()
                                        
                                        // favorite albums button
                                        Button(
                                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                            label: {
                                                VStack {
                                                    Image(systemName: "opticaldisc.fill")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.neonYellow)
                                                    Text ("Favoritos( )")
                                                        .font(.system(size: 15.5))
                                                        .foregroundColor(.white)
                                                }.padding(.trailing, 80)
                                            })
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                    // first list container
                    ZStack {
                        Rectangle()
                            .foregroundColor(.darkGray)
                            .frame(width: 400, height: 270)
                        VStack {
                            profileList(symbolName: "lock.fill", top: 10, symbolSize: 20, category: "Segurança")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "laptopcomputer.and.iphone", top: 10, symbolSize: 14, category: "Apps e Dispositivos")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "network.slash", top: 10, symbolSize: 20, category: "Modo Ofline")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "chart.bar.fill", top: 10, symbolSize: 20, category: "Qualidade de Mídia")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "speaker.wave.1.fill", top: 10, symbolSize: 20, category: "Reprodução")
                        }
                        .padding(.bottom, 15)
                    }
                    Spacer()
                    // second container (small)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.darkGray)
                            .frame(width: 400, height: 40)
                        VStack {
                            profileList(symbolName: "doc.text.fill", top: 10, symbolSize: 20, category: "Termos e Condições")
                        }
                        .padding(.bottom, 10)
                    }
                    Spacer()
                    // second list container
                    ZStack {
                        Rectangle()
                            .foregroundColor(.darkGray)
                            .frame(width: 400, height: 160)
                        VStack{
                            profileList(symbolName: "bell.badge.fill", top: 10, symbolSize: 20, category: "Segurança")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "character.bubble.fill", top: 10, symbolSize: 20, category: "Idioma")
                            separatorList(width: 340, height: 1, leaning: 50)
                            
                            profileList(symbolName: "accessibility", top: 10, symbolSize: 20, category: "Acessibilidade")
                        }
                        .padding(.bottom, 10)
                    }
                    Spacer()
                    ZStack {
                        Rectangle()
                            .foregroundColor(.darkGray)
                            .frame(width: 400, height: 40)
                        VStack {
                            profileList(symbolName: "doc.text.fill", top: 10, symbolSize: 20, category: "Termos e Condições")
                        }
                        .padding(.bottom, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    Perfil()
}

