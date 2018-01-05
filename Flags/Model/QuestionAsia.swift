//
//  QuestionBank.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2017 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionAsia{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer

        list.append(Question(image: "flagW1", questionText: "Kabul", choice: ["Afghanistan", "Syrien", "Iran", "Jemen"]))
        list.append(Question(image: "flagW10", questionText: "Eriwan", choice: ["Armenien", "Aserbaidschan", "Georgien", "Iran"]))
        list.append(Question(image: "flagW11", questionText: "Baku", choice: ["Aserbaidschan", "Armenien", "Georgien", "Iran"]))
        list.append(Question(image: "flagW15", questionText: "Manama", choice: ["Bahrain", "Saudi Arabien", "Oman", "Irak"]))
        list.append(Question(image: "flagW16", questionText: "Dhaka", choice: ["Bangladesch", "Indien", "Nepal", "Bhutan"]))
        list.append(Question(image: "flagW21", questionText: "Thimpu", choice: ["Bhutan", "Myanmar", "Bangladesch", "Nepal"]))
        list.append(Question(image: "flagW26", questionText: "Bandar Seri Begawan", choice: ["Brunei Darussalam", "Indonesien", "Philippinen", "Malaysia"]))
        list.append(Question(image: "flagW31", questionText: "Peking", choice: ["China", "Nordkorea", "Laos", "Burma"]))
        list.append(Question(image: "flagW48", questionText: "Tiflis", choice: ["Georgien", "Aserbaidschan", "Armenien", "Mazedonien"]))
        list.append(Question(image: "flagW59", questionText: "Neu-Dehli", choice: ["Indien", "Bangladesch", "Myanmar", "Sri Lanka"]))
        list.append(Question(image: "flagW60", questionText: "Jakarta", choice: ["Indonesien", "Philippinen", "Malaysia", "Papua-Neuguinea"]))
        list.append(Question(image: "flagW61", questionText: "Bagdad", choice: ["Irak", "Iran", "Syrien", "Afghanistan"]))
        list.append(Question(image: "flagW62", questionText: "Teheran", choice: ["Iran", "Irak", "Syrien", "Saudi Arabien"]))
        list.append(Question(image: "flagW65", questionText: "Jerusalem", choice: ["Israel", "Jordanien", "Palestina", "Syrien"]))
        list.append(Question(image: "flagW68", questionText: "Tokio", choice: ["Japan", "China", "Südkorea", "Taiwan"]))
        list.append(Question(image: "flagW69", questionText: "Sanaa", choice: ["Jemen", "Eritrea", "Oman", "Bahrain"]))
        list.append(Question(image: "flagW70", questionText: "Amman", choice: ["Jordanien", "Syrien", "Israel", "Saudi-Arabien"]))
        list.append(Question(image: "flagW71", questionText: "Phnom Penh", choice: ["Kambodscha", "Vietnam", "Thailand", "Laos"]))
        list.append(Question(image: "flagW75", questionText: "Astana", choice: ["Kasachstan", "Georgien", "Aserbaidschan", "Armenien"]))
        list.append(Question(image: "flagW76", questionText: "Doha", choice: ["Katar", "Kuwait", "Emirate", "Oman"]))
        list.append(Question(image: "flagW78", questionText: "Bischkek", choice: ["Kirgisitan", "Aserbaidschan", "Armenien", "Mazedonien"]))
    }
}




