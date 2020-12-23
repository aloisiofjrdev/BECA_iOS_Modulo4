//
//  Safari.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 23/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Safari: NSObject {
    
    func abrePaginaWeb (_ alunoSelecionado: Aluno) {
        if let urlDoAluno = alunoSelecionado.site {
            
            var urlFormatada = urlDoAluno
            
            if !urlFormatada.hasPrefix("http://") {
                urlFormatada = String(format: "http://%@", urlFormatada)
            }
            
            guard let url = URL(string: urlFormatada) else { return }
            let safariViewController = SFSafariViewController(url: url)
            self.present(safariViewController, animated: true, completion: nil)
        }
    }

}
