//
//  SelectionViewController.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//

import UIKit
import CoreData

class SelectionViewController: UIViewController {

    
    @IBOutlet weak var afrikaSwitch: UISwitch!
    @IBOutlet weak var afrikaSwitchTwo: UISwitch!
    @IBOutlet weak var amerikaSwitch: UISwitch!
    @IBOutlet weak var amerikaSwitchTwo: UISwitch!
    @IBOutlet weak var asienSwitch: UISwitch!
    @IBOutlet weak var asienSwitchTwo: UISwitch!
    @IBOutlet weak var europaSwitch: UISwitch!
    @IBOutlet weak var europaSwitchTwo: UISwitch!
    @IBOutlet weak var ozeanienSwitch: UISwitch!
    @IBOutlet weak var trainerSwitch: UISwitch!
    
    @IBOutlet weak var trainingslisteLabel: UILabel!
    @IBOutlet weak var starterButton: UIButton!
    
    var settings = [Settings]()
    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // wenn es bereits Settings gibt, die Switches entsprechend stellen.
        let fetchRequest: NSFetchRequest<Settings> = NSFetchRequest<Settings>(entityName: "Settings")
        do{
            let settings = try CoreDataStack.context.fetch(fetchRequest)
            self.settings = settings
        } catch {}
        
        let fetchCountryRequest: NSFetchRequest<Country> = NSFetchRequest<Country>(entityName: "Country")
        do{
            let countries = try CoreDataStack.context.fetch(fetchCountryRequest)
            self.countries = countries
        } catch {}
        
        if(countries.count > 0){
            trainingslisteLabel.isHidden = false
            trainerSwitch.isHidden = false
            if(countries.count == 1){
                trainingslisteLabel.text = "Trainingsliste (\(countries.count) Land)"
            }else{
                trainingslisteLabel.text = "Trainingsliste (\(countries.count) Länder)"
            }
            
        }else{
            trainingslisteLabel.isHidden = true
            trainerSwitch.isHidden = true
        }

        for setting in settings {
            if(setting.region == "africa"){
                afrikaSwitch.setOn(setting.selected, animated: false)
            }
            if(setting.region == "africaTwo"){
                afrikaSwitchTwo.setOn(setting.selected, animated: false)
            }
            if(setting.region == "america"){
                amerikaSwitch.setOn(setting.selected, animated: false)
            }
            if(setting.region == "americaTwo"){
                amerikaSwitchTwo.setOn(setting.selected, animated: false)
            }
            if(setting.region == "asia"){
                asienSwitch.setOn(setting.selected, animated: false)
            }
            if(setting.region == "asiaTwo"){
                asienSwitchTwo.setOn(setting.selected, animated: false)
            }
            if(setting.region == "europe"){
                europaSwitch.setOn(setting.selected, animated: false)
            }
            if(setting.region == "europeTwo"){
                europaSwitchTwo.setOn(setting.selected, animated: false)
            }
            if(setting.region == "oceania"){
                ozeanienSwitch.setOn(setting.selected, animated: false)
            }
            if(setting.region == "trainer"){
                trainerSwitch.setOn(setting.selected, animated: false)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // jede Bewegung der Switches ...
    @IBAction func allSwitches(_ sender: UISwitch) {
        // Wenn eine Region ausgewählt wird, Trainermodus ausschalten oder
        // wenn Trainer ausgewählt wird, andere Auswahl ausschalten.
        if(sender.accessibilityIdentifier == "trainer"){
            afrikaSwitch.setOn(false, animated: true)
            afrikaSwitchTwo.setOn(false, animated: true)
            amerikaSwitch.setOn(false, animated: true)
            amerikaSwitchTwo.setOn(false, animated: true)
            asienSwitch.setOn(false, animated: true)
            asienSwitchTwo.setOn(false, animated: true)
            europaSwitch.setOn(false, animated: true)
            europaSwitchTwo.setOn(false, animated: true)
            ozeanienSwitch.setOn(false, animated: true)
        }else{
            trainerSwitch.setOn(false, animated: true)
        }
        saveOrChange()
    }
    
    // Weiterleitung, override prepare (ganz unten) beachten
    @IBAction func startButton(_ sender: Any) {
        performSegue(withIdentifier: "playTheGame", sender: self)
    }

    private func saveOrChange(){
        
        let allFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Settings")
        // jeweilige Abfrage, ob es schon einen Eintrag gibt, oder nicht.
        // Afrika
        allFetch.predicate = NSPredicate(format: "region == %@", "africa")
        let africaFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(africaFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let africa: Settings = africaFetch.first as! Settings
            africa.setValue(afrikaSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let africa = Settings(context: CoreDataStack.context)
            africa.region = "africa"
            africa.selected = afrikaSwitch.isOn
        }
        // Afrika Teil Zwei
        allFetch.predicate = NSPredicate(format: "region == %@", "africaTwo")
        let africaFetchTwo = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(africaFetchTwo.first != nil){
            // vorhandenen Datensatz aktualisieren
            let africaTwo: Settings = africaFetchTwo.first as! Settings
            africaTwo.setValue(afrikaSwitchTwo.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let africaTwo = Settings(context: CoreDataStack.context)
            africaTwo.region = "africaTwo"
            africaTwo.selected = afrikaSwitchTwo.isOn
        }
 
        // Amerika
        allFetch.predicate = NSPredicate(format: "region == %@", "america")
        let americaFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(americaFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let america: Settings = americaFetch.first as! Settings
            america.setValue(amerikaSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let america = Settings(context: CoreDataStack.context)
            america.region = "america"
            america.selected = amerikaSwitch.isOn
        }
        // Amerika Teil Zwei
        allFetch.predicate = NSPredicate(format: "region == %@", "americaTwo")
        let americaFetchTwo = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(americaFetchTwo.first != nil){
            // vorhandenen Datensatz aktualisieren
            let americaTwo: Settings = americaFetchTwo.first as! Settings
            americaTwo.setValue(amerikaSwitchTwo.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let americaTwo = Settings(context: CoreDataStack.context)
            americaTwo.region = "americaTwo"
            americaTwo.selected = amerikaSwitchTwo.isOn
        }
        
        // Asien
        allFetch.predicate = NSPredicate(format: "region == %@", "asia")
        let asiaFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(asiaFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let asia: Settings = asiaFetch.first as! Settings
            asia.setValue(asienSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let asia = Settings(context: CoreDataStack.context)
            asia.region = "asia"
            asia.selected = asienSwitch.isOn
        }
        // Asien Teil Zwei
        allFetch.predicate = NSPredicate(format: "region == %@", "asiaTwo")
        let asiaFetchTwo = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(asiaFetchTwo.first != nil){
            // vorhandenen Datensatz aktualisieren
            let asiaTwo: Settings = asiaFetchTwo.first as! Settings
            asiaTwo.setValue(asienSwitchTwo.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let asiaTwo = Settings(context: CoreDataStack.context)
            asiaTwo.region = "asiaTwo"
            asiaTwo.selected = asienSwitchTwo.isOn
        }
        
        // Europa
        allFetch.predicate = NSPredicate(format: "region == %@", "europe")
        let europeFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(europeFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let europe: Settings = europeFetch.first as! Settings
            europe.setValue(europaSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let europe = Settings(context: CoreDataStack.context)
            europe.region = "europe"
            europe.selected = europaSwitch.isOn
        }
        // Europa Teil Zwei
        allFetch.predicate = NSPredicate(format: "region == %@", "europeTwo")
        let europeFetchTwo = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(europeFetchTwo.first != nil){
            // vorhandenen Datensatz aktualisieren
            let europeTwo: Settings = europeFetchTwo.first as! Settings
            europeTwo.setValue(europaSwitchTwo.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let europeTwo = Settings(context: CoreDataStack.context)
            europeTwo.region = "europeTwo"
            europeTwo.selected = europaSwitchTwo.isOn
        }
        
        // Ozeanien
        allFetch.predicate = NSPredicate(format: "region == %@", "oceania")
        let oceaniaFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(oceaniaFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let oceania: Settings = oceaniaFetch.first as! Settings
            oceania.setValue(ozeanienSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let oceania = Settings(context: CoreDataStack.context)
            oceania.region = "oceania"
            oceania.selected = ozeanienSwitch.isOn
        }
        
        // Repeat - Training
        allFetch.predicate = NSPredicate(format: "region == %@", "trainer")
        let trainerFetch = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
        
        if(trainerFetch.first != nil){
            // vorhandenen Datensatz aktualisieren
            let trainer: Settings = trainerFetch.first as! Settings
            trainer.setValue(trainerSwitch.isOn, forKey: "selected")
        }else{
            // als neun Datensatz speichern
            let trainer = Settings(context: CoreDataStack.context)
            trainer.region = "trainer"
            trainer.selected = trainerSwitch.isOn
        }
        CoreDataStack.saveContext()
    }

    
    // Zuletzt die Weitergabe an den GameViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is GameViewController{
            let gvc = segue.destination as? GameViewController
            gvc?.africa = afrikaSwitch.isOn
            gvc?.africaTwo = afrikaSwitchTwo.isOn
            gvc?.america = amerikaSwitch.isOn
            gvc?.americaTwo = amerikaSwitchTwo.isOn
            gvc?.asia = asienSwitch.isOn
            gvc?.asiaTwo = asienSwitchTwo.isOn
            gvc?.europe = europaSwitch.isOn
            gvc?.europeTwo = europaSwitchTwo.isOn
            gvc?.oceania = ozeanienSwitch.isOn
            gvc?.trainer = trainerSwitch.isOn
        }
    }
    
    
}
