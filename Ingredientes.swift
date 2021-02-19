//
//  Ingredientes.swift
//  PIZZA FINAL
//
//  Created by Nicolas Russi on 17/02/21.
//  Copyright © 2021 Nicolas Russi. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {

    
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var pepperoni: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var aceituna: UIButton!
    @IBOutlet weak var piña: UIButton!
    @IBOutlet weak var pimienta: UIButton!
    @IBOutlet weak var champiñion: UIButton!
    @IBOutlet weak var anchoa: UIButton!
        
        var tamanoPizza: String? = nil
        var tipoMasa: String? = nil
        var tipoQueso: String? = nil
        var resultado: [String] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title="Ingredientes"
            jamon.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                            for: UIControlEvents.touchUpInside)
            pepperoni.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                                for: UIControlEvents.touchUpInside)
            pavo.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                           for: UIControlEvents.touchUpInside)
            salchicha.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                                for: UIControlEvents.touchUpInside)
            aceituna.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                               for: UIControlEvents.touchUpInside)
            cebolla.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                              for: UIControlEvents.touchUpInside)
            pimienta.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                               for: UIControlEvents.touchUpInside)
            piña.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                           for: UIControlEvents.touchUpInside)
            anchoa.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                             for: UIControlEvents.touchUpInside)
            champiñion.addTarget(self, action: #selector(Ingredientes.buttonClicked(_:)),
                            for: UIControlEvents.touchUpInside)
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            resultado.removeAll()
            if (jamon.isSelected) {
                resultado.append((jamon.titleLabel?.text)!)
            }
            if (pepperoni.isSelected) {
                resultado.append((pepperoni.titleLabel?.text)!)
            }
            if (pavo.isSelected) {
                resultado.append((pavo.titleLabel?.text)!)
            }
            if (salchicha.isSelected) {
                resultado.append((salchicha.titleLabel?.text)!)
            }
            if (aceituna.isSelected) {
                resultado.append((aceituna.titleLabel?.text)!)
            }
            if (cebolla.isSelected) {
                resultado.append((cebolla.titleLabel?.text)!)
            }
            if (pimienta.isSelected) {
                resultado.append((pimienta.titleLabel?.text)!)
            }
            if (piña.isSelected) {
                resultado.append((piña.titleLabel?.text)!)
            }
            if (anchoa.isSelected) {
                resultado.append((anchoa.titleLabel?.text)!)
            }
            if (champiñion.isSelected) {
                resultado.append((champiñion.titleLabel?.text)!)
            }
            print(resultado)
            if (resultado.count>=1&&resultado.count<=5) {
                return true
            }
            else {
                return false
            }
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let sigVista = segue.destination as! ConfirmacionDePedido
            sigVista.tamanoPizza = self.tamanoPizza
            sigVista.tipoMasa = self.tipoMasa
            sigVista.tipoQueso = self.tipoQueso
            sigVista.ingredientes = resultado
        }
        
        func buttonClicked(_ sender: UIButton) {
            sender.isSelected = !sender.isSelected
        }
}

