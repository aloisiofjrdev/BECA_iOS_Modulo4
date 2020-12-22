//
//  AlunoAPI.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 22/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit
import Alamofire

class AlunoAPI: NSObject {
    
    func salvaAlunosNoServidor(parametros: Array<Dictionary<String, String>>) {
        guard let url = URL(string: "http://localhost:8080/api/alunos/lista") else {return}
        var requisisao = URLRequest(url: url)
        requisisao.httpMethod = "put"
        let json = try! JSONSerialization.data(withJSONObject: parametros, options:[])
        requisisao.httpBody = json
        requisisao.addValue("application/json", forHTTPHeaderField: "Content-Type")
        Alamofire.request(requisisao)
    }

}
