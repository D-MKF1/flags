//
//  QuestionAmericaPartTwo.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionAmericaPartTwo{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer
        
        list.append(Question(image: "flagW156", questionText: "Havanna", choice: ["Kuba", "Jamaika", "Bahamas", "Belize"]))
        list.append(Question(image: "flagW157", questionText: "Hauptstadt verrät Landesnamen.", choice: ["Mexiko", "Guatemala", "Nicaragua", "Costa Rica"]))
        list.append(Question(image: "flagW158", questionText: "Managua", choice: ["Nicaragua", "Dominikanische Rep.", "Kuba", "Belize"]))
        list.append(Question(image: "flagW159", questionText: "Hauptstadt verrät Landesnamen.", choice: ["Panama", "St. Lucia", "Grenada", "Kolumbien"]))
        list.append(Question(image: "flagW160", questionText: "Asunión", choice: ["Paraguay", "Bolivien", "Honduras", "Uruguay"]))
        list.append(Question(image: "flagW161", questionText: "Lima", choice: ["Peru", "Chile", "Paraguay", "Ecuador"]))
        list.append(Question(image: "flagW162", questionText: "Basseterre", choice: ["Saint Kitts und Nevis", "Montserrat", "Jungferninseln", "Antiqua und Barbuda"]))
        list.append(Question(image: "flagW163", questionText: "Castries", choice: ["Saint Lucia", "Martinique", "Grenada", "Anguilla"]))
        list.append(Question(image: "flagW164", questionText: "Kingstown", choice: ["Staint Vincent und Grenadinen", "Barbados", "Trinidad und Tobago", "Saint Lucia"]))
        list.append(Question(image: "flagW165", questionText: "Paramaribo", choice: ["Suriname", "Guyana", "Franz.Guyana", "Jamaica"]))
        list.append(Question(image: "flagW166", questionText: "Port of Spain", choice: ["Trinidad und Tobago", "Dominica", "Haiti", "Jamaica"]))
        list.append(Question(image: "flagW167", questionText: "Montevideo", choice: ["Uruguay", "Kolumbien", "Peru", "Paraguay"]))
        list.append(Question(image: "flagW168", questionText: "Washington", choice: ["USA", "Kuba", "Kanada", "Mexiko"]))
        list.append(Question(image: "flagW169", questionText: "Caracas", choice: ["Venezuela", "Kolumbien", "Trinidad & Tobago", "Guyana"]))
    }
}





