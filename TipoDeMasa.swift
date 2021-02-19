//
//  TipoDeMasa.swift
//  PIZZA FINAL
//
//  Created by Nicolas Russi on 17/02/21.
//  Copyright © 2021 Nicolas Russi. All rights reserved.
//

import UIKit

class TipoDeMasa: UIViewController {
    var tamanoPizza: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Tipo de Masa"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as!ClaseDeQueso
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = resultado
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


