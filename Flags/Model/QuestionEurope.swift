//
//  QuestionEurope.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionEurope{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer
        
        list.append(Question(image: "flagW3", questionText: "Tirana", choice: ["Albanien", "Montenegro", "Kosovo", "Mazdeonien"]))
        list.append(Question(image: "flagW5", questionText: "Mit 78.000 Einwohnern und 468 km² Fläche ist dieses Land der Fläche nach der größte unter den sechs europäischen Zwergstaaten.", choice: ["Andorra", "Luxemburg", "Liechtenstein", "Monacco"]))
        list.append(Question(image: "flagW18", questionText: "Brüssel", choice: ["Belgien", "Deutschland", "Rumänien", "Litauen"]))
        list.append(Question(image: "flagW23", questionText: "Sarajevo", choice: ["Bosnien Herzegowina", "Aserbaidschan", "Georgien", "Iran"]))
        list.append(Question(image: "flagW27", questionText: "Sofia", choice: ["Bulgarien", "Mazedonien", "Rumänien", "Moldawien"]))
        list.append(Question(image: "flagW33", questionText: "Kopenhagen", choice: ["Dänemark", "Finnland", "Schweden", "Norwegen"]))
        list.append(Question(image: "flagW34", questionText: "Berlin", choice: ["Deutschland", "Belgien", "Rumänien", "Litauen"]))
        list.append(Question(image: "flagW42", questionText: "Tallin (Reval)", choice: ["Estland", "Lettland", "Litauen", "Finnland"]))
        list.append(Question(image: "flagW44", questionText: "Helsinki", choice: ["Finnland", "Dänemark", "Schweden", "Norwegen"]))
        list.append(Question(image: "flagW45", questionText: "Paris", choice: ["Frankreich", "Nebraska", "Tonga", "Howland Island"]))
        list.append(Question(image: "flagW51", questionText: "Athen", choice: ["Griechenland", "Bulgarien", "Tunesien", "Moldavien"]))
        list.append(Question(image: "flagW52", questionText: "London", choice: ["Vereinigtes Königreich GB", "Irland", "Isle of Man", "Schweden"]))
        list.append(Question(image: "flagW63", questionText: "Dublin", choice: ["Irland", "Elfenbeinküste", "England", "Nordirland"]))
        list.append(Question(image: "flagW64", questionText: "Reykjavik", choice: ["Island", "Dänemark", "Schweden", "Norwegen"]))
        list.append(Question(image: "flagW66", questionText: "Rom", choice: ["Italien", "Frankreich", "Vatikanstadt", "Europäische Union"]))
        list.append(Question(image: "flagW81", questionText: "Pristina", choice: ["Kosovo", "Serbien", "Montenegro", "Kroatien"]))
        list.append(Question(image: "flagW82", questionText: "Zagreb", choice: ["Kroatien", "Serbien", "Montenegro", "Kososvo"]))
        list.append(Question(image: "flagW83", questionText: "Riga", choice: ["Lettland", "Österreich", "Estland", "Litauen"]))
        list.append(Question(image: "flagW84", questionText: "Vaduz", choice: ["Liechtenstein", "Österreich", "Schweiz", "Isle of Man"]))
        list.append(Question(image: "flagW85", questionText: "Vilnius (Wilna)", choice: ["Litauen", "Österreich", "Estland", "Lettland"]))
        list.append(Question(image: "flagW86", questionText: "Nach der Hauptstadt benannt.", choice: ["Luxemburg", "Monacco", "Andorra", "Niederlande"]))
        list.append(Question(image: "flagW87", questionText: "Valletta", choice: ["Malta", "Monacco", "Andorra", "San Marino"]))
        list.append(Question(image: "flagW88", questionText: "Skopje", choice: ["Mazedonien", "Kosovo", "Serbien", "Bulgarien"]))
        list.append(Question(image: "flagW89", questionText: "Chisinau", choice: ["Moldawien", "Kosovo", "Serbien", "Andorra"]))
        list.append(Question(image: "flagW90", questionText: "Nach der Hauptstadt benannt.", choice: ["Monacco", "Luxemburg", "Andorra", "Malta"]))
        list.append(Question(image: "flagW91", questionText: "Podgorica", choice: ["Montenegro", "Albanien", "Serbien", "Andorra"]))
        list.append(Question(image: "flagW92", questionText: "Amsterdam", choice: ["Niederlande", "Frankreich", "Russland", "Montenegro"]))

    }
}




