//
//  EmojiThemes.swift
//  memorize
//
//  Created by Slava Rykov on 12.03.2023.
//

import SwiftUI

class EmojiThemes: ObservableObject {
    typealias EmojiTheme = (
        name: String, contentCount: Int, content: [String], color: Color
    )
    
    private static let themesList: [EmojiTheme] = [
        (
            name: "sport",
            contentCount: 7,
            content: ["β½οΈ", "π", "π", "βΎοΈ", "π±", "πΎ", "π", "π"],
            color: Color.blue
        ),
        (
            name: "vehicles",
            contentCount: 8,
            content: ["πΈ", "π", "π°οΈ", "π", "π©οΈ", "πΆ", "β΅οΈ", "π€"],
            color: Color.red
        ),
        (
            name: "gadgets",
            contentCount: 4,
            content: ["βοΈ", "π±", "π»", "β¨οΈ", "π·", "π₯", "π", "ποΈ"],
            color: Color.indigo
        ),
        (
            name: "halloween",
            contentCount: 5,
            content: ["π", "π", "π»", "π«₯", "πΉ", "π½", "π€", "π§»"],
            color: Color.blue
        ),
    ]
    
    @Published private var themes: Themes<String, Color>
    
    init() {
        themes = Themes()
        buildThemes()
    }
    
    func buildThemes() {
        for theme in EmojiThemes.themesList {
            themes.addNew(
                name: theme.name,
                contentCount: theme.contentCount,
                content: theme.content,
                color: theme.color
            )
        }
    }
}
