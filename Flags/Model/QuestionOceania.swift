//
//  QuestionOceania.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import Foundation

class QuestionOceania{
    var list = [Question]()
    
    init() {
        
        // The first country is the correct answer
        
        list.append(Question(image: "flagW13", questionText: "Canberra", choice: ["Australien", "Neuseeland", "USAmerika", "Palau"]))
        list.append(Question(image: "flagW43", questionText: "Suva", choice: ["Fidschi", "Neukaledonien", "Vanuatu", "Tonga"]))
        list.append(Question(image: "flagW79", questionText: "Bairiki", choice: ["Kribati", "Fidschi", "Tuvalu", "Franz. Polynesien"]))
        list.append(Question(image: "flagW112", questionText: "Dalap-Uliga-Darrit", choice: ["Marshallinseln", "Fidschi", "Tonga", "Wallis und Futuna"]))
        list.append(Question(image: "flagW113", questionText: "Palikir", choice: ["Mikronesien", "Nördliche Marianen", "Guam", "Marshallinseln"]))
        list.append(Question(image: "flagW114", questionText: "Yaren", choice: ["Nauru", "Fidschi", "Tuvalu", "Papua-Neuguinea"]))
        list.append(Question(image: "flagW115", questionText: "Wellington", choice: ["Neuseeland", "Neukaledonien", "Salomonen", "Vanuatu"]))
        list.append(Question(image: "flagW116", questionText: "Melekeok", choice: ["Palau", "Samoa", "Vanuatu", "Kiribat"]))
        list.append(Question(image: "flagW117", questionText: "Port Moresby", choice: ["Papua-Neuguinea", "Indonesien", "Tuvalu", "Cookinseln"]))
        list.append(Question(image: "flagW118", questionText: "Honiara", choice: ["Salomonen", "Neuseeland", "Vanutau", "Palau"]))
        list.append(Question(image: "flagW119", questionText: "Apia", choice: ["Samoa", "Tokelau", "Niue", "Tonga"]))
        list.append(Question(image: "flagW120", questionText: "Nuku'alofa", choice: ["Tonga", "Wallis und Futuna", "Fidschi", "Niue"]))
        list.append(Question(image: "flagW121", questionText: "Funafuti", choice: ["Tuvalu", "Tokelau", "Samoa", "Wallis und Futuna"]))
        list.append(Question(image: "flagW122", questionText: "Port Vila", choice: ["Vanuatu", "Neukaledonien", "Salomonen", "Fidschi"]))
    }
}




