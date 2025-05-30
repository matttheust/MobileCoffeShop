//
//  AppFontName.swift
//  MobileCoffeShop
//
//  Created by Matheus  Torres on 30/05/25.
//

import SwiftUI


struct AppFontName {
    static let thin = "Sora-Thin"
    static let extraLight = "Sora-ExtraLight"
    static let light = "Sora-Light"
    static let regular = "Sora-Regular"
    static let medium = "Sora-Medium"
    static let semiBold = "Sora-SemiBold"
    static let bold = "Sora-Bold"
    static let extraBold = "Sora-ExtraBold"
}

/// Extensão para criar nosso style guide de tipografia, tornando o uso da fonte Sora fácil e consistente.
extension Font {
    
    // MARK: - Títulos
    
    /// Estilo para o título mais importante da tela (Hero). Tamanho: 34, Peso: ExtraBold
    static var soraHero: Font {
        .custom(AppFontName.extraBold, size: 34)
    }
    
    /// Estilo para títulos de seções principais. Tamanho: 28, Peso: Bold
    static var soraTitle: Font {
        .custom(AppFontName.bold, size: 28)
    }
    
    /// Estilo para subtítulos. Tamanho: 22, Peso: SemiBold
    static var soraSubtitle: Font {
        .custom(AppFontName.semiBold, size: 22)
    }
    
    // MARK: - Corpo de Texto
    
    /// Estilo para o corpo de texto principal, descrições. Tamanho: 17, Peso: Regular
    static var soraBody: Font {
        .custom(AppFontName.regular, size: 17)
    }
    
    /// Estilo para textos de destaque no corpo. Tamanho: 17, Peso: SemiBold
    static var soraBodyHighlight: Font {
        .custom(AppFontName.semiBold, size: 17)
    }
    
    // MARK: - Elementos de UI
    
    /// Estilo para botões e outros elementos clicáveis. Tamanho: 16, Peso: Bold
    static var soraButton: Font {
        .custom(AppFontName.bold, size: 16)
    }
    
    /// Estilo para textos de legenda, menores e informativos. Tamanho: 14, Peso: Light
    static var soraCaption: Font {
        .custom(AppFontName.light, size: 14)
    }
    
    /// Estilo para textos muito pequenos. Tamanho: 12, Peso: Regular
    static var soraFootnote: Font {
        .custom(AppFontName.regular, size: 12)
    }
}
