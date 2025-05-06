import Foundation
import SwiftUI

struct genre: View {
    let symbol: String
    let symbolSize: CGFloat
    let label: String
    let sizeCircle : CGFloat
    
    init(symbol: String, symbolSize: CGFloat, label: String, sizeCircle: CGFloat) {
        self.symbol = symbol
        self.symbolSize = symbolSize
        self.label = label
        self.sizeCircle = sizeCircle
    }
    var body: some View{
        Button(
            action: {},
            label: {
                VStack (){
                    ZStack(){
                        Circle()
                            .foregroundStyle(.deepGray)
                            .frame(width: sizeCircle, height: sizeCircle)
                        Image(systemName: symbol)
                            .frame(alignment: .center)
                            .font(.system(size: symbolSize))
                            .foregroundColor(.neonYellow)
                    }
                    Text(label)
                        .foregroundColor(.mediumGray)
                        .font(.system(size: 12, weight: .medium))
                }
                .padding(.top, -20)
            })
    }
}

struct descriptor: View {
    let frase: String
    let textSize: Double
    let leading: Double
    let top: Double
    
    init(frase: String, textSize: Double, leading: Double, top: Double) {
        self.frase = frase
        self.textSize = textSize
        self.leading = leading
        self.top = top
    }
    
    var body: some View {
        Text(frase)
            .font(.system(size: textSize, weight: .bold))
            .padding(.leading, leading)
            .padding(.top, top)
        Spacer()
    }
}

struct seeAll: View {
    let top: Double
    let trailing: Double
    
    init(top: Double, trailing: Double) {
        self.top = top
        self.trailing = trailing
    }
    
    var body: some View{
        Button(
            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
            
            label: {
                Text("Ver tudo")
                    .padding(.top, 20)
                    .padding(.trailing, 20)
                    .foregroundColor(.neonYellow)
            })
    }
}

struct smallScroll: View {
    let leading: Double
    let leadingText: Double
    let top: Double
    let imgName: String
    
    init(leading: Double, leadingText: Double, top: Double, imgName: String) {
        self.leading = leading
        self.leadingText = leadingText
        self.top = top
        self.imgName = imgName
    }
    
    var body: some View {
        
        //radius 8.3
        Image(imgName)
            .resizable()
            .frame(width: 166, height: 96)
            .padding(.leading, leading)
            .padding(.top, top)
            .cornerRadius(8.3)
        
        VStack(alignment: .leading){
            Text("Gênero")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.neonBlue)
            Text("Música")
                .font(.system(size: 14))
            
            HStack{
                Image(systemName: "person.fill")
                    .foregroundColor(.neonBlue)
                    .font(.system(size: 14))
                Text("Artista")
                    .font(.system(size: 14))
            }
            
            HStack{
                Image(systemName: "opticaldisc.fill")
                    .foregroundColor(.neonBlue)
                    .font(.system(size: 14))
                Text("Album")
                    .font(.system(size: 14))
            }
            Text("Data de Lançamento")
                .font(.system(size: 14))
            
        } .padding(.leading, leadingText)
        
    }
}

struct bigScroll: View {
    let leading: Double
    let imgName: String
    
    init(leading: Double, imgName: String) {
        self.leading = leading
        self.imgName = imgName
    }
    
    var body: some View {
        // radius 4.5
        Image(imgName)
            .resizable()
            .frame(width: 297.3, height: 180)
            .padding(.leading, leading)
            .cornerRadius(4.5)
    }
}

struct separatorLine: View {
    
    var body: some View {
        Rectangle()
            .frame(width: 355, height: 1)
            .padding(.top, 18)
            .foregroundColor(.mediumGray)
    }
}

struct separatorList: View {
    let width: Double
    let height: Double
    let leaning: Double
    
    init(width: Double, height: Double, leaning: Double) {
        self.width = width
        self.height = height
        self.leaning = leaning
    }
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(.deepGray)
            .padding(.leading, leaning)
    }
}

struct singersList: View {
    let sizeCircle : CGFloat
    let singerPhoto : String
    let top: Double
    let symbolSize : Double
    
    init(sizeCircle: CGFloat, symbolSize : Double, top: Double, singerPhoto: String) {
        self.symbolSize = symbolSize
        self.sizeCircle = sizeCircle
        self.top = top
        self.singerPhoto = singerPhoto
        
    }
    var body: some View {
        Button(
            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
            label: {
                HStack {
                    HStack {
                        Image(singerPhoto)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: sizeCircle, height: sizeCircle)
                            .padding(.leading, 20)
                        
                        VStack(alignment: .leading){
                            HStack {
                                Image(systemName: "person.fill")
                                    .font(.system(size: symbolSize))
                                    .foregroundColor(.neonYellow)
                                Text ("Nome do Artista")
                                    .font(.system(size: 19))
                                    .foregroundStyle(.white)
                            }
                            HStack {
                                Image(systemName: "star.fill")
                                    .font(.system(size: symbolSize))
                                    .foregroundColor(.neonBlue)
                                Text ("01")
                                    .font(.system(size: 15))
                                    .foregroundColor(.neonBlue)
                            }
                            HStack {
                                Text ("Gênero musical")
                                    .font(.system(size: 15))
                                    .foregroundColor(.lightGray)
                                
                            }
                        }
                        .padding(.leading, 10)
                    }
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
                .padding(.top, top)
            })
    }
}


struct profileList: View {
    let symbolName : String
    let top: Double
    let symbolSize : Double
    let category : String
    
    init(symbolName: String, top: Double, symbolSize: Double, category: String) {
        self.symbolName = symbolName
        self.top = top
        self.symbolSize = symbolSize
        self.category = category
    }
    
    var body: some View {
        Button(
            action: {},
            label: {
                HStack {
                    HStack{
                        Image(systemName: symbolName)
                            .font(.system(size: symbolSize))
                            .foregroundColor(.neonPurple)
                            .padding(.leading, 20)
                        Text (category)
                            .font(.system(size: 19))
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                    }
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
                .padding(.top, top)
            })
    }
}
