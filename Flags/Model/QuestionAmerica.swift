//
//  QuestionAmerica.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionAmerica{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer
        
        list.append(Question(image: "flagW7", questionText: "St. John's", choice: ["Antigua & Barbuda", "Saint Kitts und Nevis", "Barbados", "Bhutan"]))
        list.append(Question(image: "flagW9", questionText: "Buenos Aires", choice: ["Argentinien", "Chile", "Brasilien", "Bolivien"]))
        list.append(Question(image: "flagW14", questionText: "Nassau", choice: ["Bahamas", "Dominikanische Rep.", "Kuba", "Belize"]))
        list.append(Question(image: "flagW17", questionText: "Bridgetown", choice: ["Barbados", "St. Lucia", "Grenada", "Trinidad & Tobago"]))
        list.append(Question(image: "flagW19", questionText: "Belmopan", choice: ["Belize", "Guatemala", "Honduras", "El Salvador"]))
        list.append(Question(image: "flagW22", questionText: "Sucre", choice: ["Bolivien", "Chile", "Paraguay", "Peru"]))
        list.append(Question(image: "flagW25", questionText: "Die Hauptstadt heißt beinahe wie das Land selbst.", choice: ["Brasilien", "Argentinien", "Venezuela", "Suriname"]))
        list.append(Question(image: "flagW30", questionText: "Santiago", choice: ["Chile", "Bolivien", "Peru", "Paraguay"]))
        list.append(Question(image: "flagW32", questionText: "San Jose", choice: ["Costa Rica", "Panama", "Nicaragua", "Honduras"]))
        list.append(Question(image: "flagW35", questionText: "Roseau", choice: ["Dominica", "Dominikanische Rep.", "Haiti", "Jamaica"]))
        list.append(Question(image: "flagW36", questionText: "Santo Domingo", choice: ["Dominikanische Rep.", "Dominica", "Haiti", "Jamaica"]))
        list.append(Question(image: "flagW38", questionText: "Quito", choice: ["Ecuador", "Kolumbien", "Peru", "Panama"]))
        list.append(Question(image: "flagW40", questionText: "San Salvador", choice: ["El Salvador", "Nicaragua", "Honduras", "Belize"]))
        list.append(Question(image: "flagW50", questionText: "St.George's", choice: ["Grenada", "Barbados", "Trinidad & Tobago", "Montserrat"]))
        list.append(Question(image: "flagW53", questionText: "Die Hauptstadt heißt wie das Land selbst.", choice: ["Guatemala", "Honduras", "El Salvador", "Belize"]))
        list.append(Question(image: "flagW56", questionText: "Georgetown", choice: ["Guyana", "Suriname", "Franz. Guyana", "Grenada"]))
        list.append(Question(image: "flagW57", questionText: "Port-au-Prince", choice: ["Haiti", "Dominikanische Rep.", "Bahamas", "Jamaika"]))
        list.append(Question(image: "flagW58", questionText: "Tegucigalpa", choice: ["Honduras", "Nicaragua", "Belize", "Panama"]))
        list.append(Question(image: "flagW67", questionText: "Kingston", choice: ["Jamaika", "Kuba", "Haiti", "St. Lucia"]))
        list.append(Question(image: "flagW73", questionText: "Ottawa", choice: ["Kanada", "Japan", "China", "Tonga"]))
        list.append(Question(image: "flagW80", questionText: "Bogotá", choice: ["Kolumbien", "Ecuador", "Peru", "Venezuela"]))
    }
}




