//
//  ViewController.swift
//  PIZZA FINAL
//
//  Created by Nicolas Russi on 16/02/21.
//  Copyright © 2021 Nicolas Russi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Tamaño de la Pizza"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as! TipoDeMasa
        sigVista.tamanoPizza = resultado
    }
}


