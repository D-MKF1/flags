//
//  QuestionEurope.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionEuropePartTwo{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer
        
        list.append(Question(image: "flagW93", questionText: "Oslo", choice: ["Norwegen", "Finnland", "Schweden", "Dänemark"]))
        list.append(Question(image: "flagW94", questionText: "Wien", choice: ["Österreich", "Schweiz", "Polen", "Malta"]))
        list.append(Question(image: "flagW95", questionText: "Warschau", choice: ["Polen", "Schweiz", "Österreich", "Malta"]))
        list.append(Question(image: "flagW96", questionText: "Lissabon", choice: ["Portugal", "Spanien", "Zypern", "Malta"]))
        list.append(Question(image: "flagW97", questionText: "Bukarest", choice: ["Rumänien", "Montenegro", "Serbien", "Albanien"]))
        list.append(Question(image: "flagW98", questionText: "Moskau", choice: ["Russland", "Niederlande", "Frankreich", "Estland"]))
        list.append(Question(image: "flagW99", questionText: "Nach der Hauptstadt benannt.", choice: ["San Marino", "Monacco", "Andorra", "Liechtenstein"]))
        list.append(Question(image: "flagW100", questionText: "Stockholm", choice: ["Schweden", "Finnland", "Norwegen", "Dänemark"]))
        list.append(Question(image: "flagW101", questionText: "Bern", choice: ["Schweiz", "Liechtenstein", "Andorra", "Österreich"]))
        list.append(Question(image: "flagW102", questionText: "Belgrad", choice: ["Serbien", "Mazedonien", "Albanien", "Rumänien"]))
        list.append(Question(image: "flagW103", questionText: "Bratislava", choice: ["Slowakei", "Mazedonien", "Albanien", "Serbien"]))
        list.append(Question(image: "flagW104", questionText: "Ljubljana", choice: ["Slowenien", "Mazedonien", "Albanien", "Serbien"]))
        list.append(Question(image: "flagW105", questionText: "Madrid", choice: ["Spanien", "Isle of Man", "Italien", "Mazedonien"]))
        list.append(Question(image: "flagW106", questionText: "Prag", choice: ["Tschechien", "Slowenien", "Serbien", "Malta"]))
        list.append(Question(image: "flagW107", questionText: "Kiew", choice: ["Ukraine", "Bulgarien", "Usbekistan", "Weissrussland"]))
        list.append(Question(image: "flagW108", questionText: "Budapest", choice: ["Ungarn", "Rumänien", "Österreich", "Weissrussland"]))
        list.append(Question(image: "flagW109", questionText: "Hauptstadt des Hoffnung, des Glaubens und des Geldes der westlichen Welt.", choice: ["Vatikanstadt", "Monacco", "Liechtenstein", "Schweiz"]))
        list.append(Question(image: "flagW110", questionText: "Minsk", choice: ["Weissrussland", "Rumänien", "Ukraine", "Litauen"]))
        list.append(Question(image: "flagW111", questionText: "Nikosia", choice: ["Zypern", "Malta", "Liechtenstein", "Griechenland"]))
        
        list.append(Question(image: "flagW198", questionText: "Mariehamn", choice: ["Åland", "Saaremaa", "Finnland", "Schweden"]))
        list.append(Question(image: "flagW199", questionText: "Douglas", choice: ["Isel of Man", "Jersey", "Wales", "Faroe"]))
        list.append(Question(image: "flagW200", questionText: "Saint Anne", choice: ["Alderney", "Jersey", "Albanien", "Serbien"]))
        list.append(Question(image: "flagW201", questionText: "Belfast", choice: ["Nordirland", "England", "Norwegen", "Irland"]))
        list.append(Question(image: "flagW202", questionText: "Tórshavn", choice: ["Färöer", "Isle of Man", "Åland", "Island"]))
        list.append(Question(image: "flagW203", questionText: "Cardiff", choice: ["Wales", "Isle of Man", "Serbien", "Malta"]))
        list.append(Question(image: "flagW204", questionText: "Saint Helier", choice: ["Jersey", "Hebriden", "Isle of Man", "Guernsey"]))
        list.append(Question(image: "flagW205", questionText: "Le Manoir", choice: ["Herm", "Sark", "Guernsey", "Alderney"]))
        list.append(Question(image: "flagW206", questionText: "London", choice: ["England", "Nordirland", "Wales", "Litauen"]))
        list.append(Question(image: "flagW207", questionText: "Edinburgh", choice: ["Schottland", "Irland", "St. Johns", "Martinique"]))
    }
}
