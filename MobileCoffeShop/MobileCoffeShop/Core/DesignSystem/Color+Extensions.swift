//
//  Color+Extensions.swift
//  MobileCoffeShop
//
//  Created by Matheus  Torres on 30/05/25.
//

import SwiftUI

// MARK: - Helper: Inicializador para Cores com Código Hexadecimal
// Esta é a extensão que você forneceu, para facilitar a criação de cores.
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - Guia de Cores da Marca (Color Guide)
extension Color {
    
    /// Cor primária da marca. Usada em botões principais, ícones ativos e destaques.

    static let brandPrimary = Color(hex: "C67C4E")
    
    /// Cor secundária, um tom de bege. Usada em cards ou fundos secundários.

    static let brandSecondary = Color(hex: "EDD6C8")
    
    /// Cor de texto principal. Um cinza escuro para alta legibilidade.

    static let textPrimary = Color(hex: "313131")
    
    /// Cor para divisores, bordas e fundos de elementos desabilitados.

    static let interfaceGray = Color(hex: "E3E3E3")
    
    /// Cor de fundo principal do app. Um branco "quente".

    static let background = Color(hex: "F9F2ED")
    

//    static let brandWhite = Color.white
//    static let brandBlack = Color(hex: "313131")
}
