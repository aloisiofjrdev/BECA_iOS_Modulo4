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
    
    // MARK: - GET
    
    func recuperaAlunos(){
        Alamofire.request("http://localhost:8080/api/aluno", method: .get).responseJSON { (response) in switch response.result {
        case .success:
            print(response.result.value!)
            break
        case .failure:
            print(response.error!)
            break
            }
        }
    }
    
    // MARK: - PUT
    
    func salvaAlunosNoServidor(parametros: Array<Dictionary<String, String>>) {
        guard let url = URL(string: "http://localhost:8080/api/aluno/lista") else {return}
        var requisisao = URLRequest(url: url)
        requisisao.httpMethod = "PUT"
        let json = try! JSONSerialization.data(withJSONObject: parametros, options:[])
        requisisao.httpBody = json
        requisisao.addValue("application/json", forHTTPHeaderField: "Content-Type")
        Alamofire.request(requisisao)
    }

}
