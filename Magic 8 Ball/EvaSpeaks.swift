//
//  EvaSpeaks.swift
//  Magic 8 Ball
//
//  Created by Lena Rotteveel on 12/6/19.
//  Copyright © 2019 Lena Rotteveel. All rights reserved.
//

import Foundation
class Eva {
    var whatEvaSays = ["Bark", "Bork", "Woof", "Meow"] //different things Eva can say
    
    
    func evaSpeaks() -> String {
        return whatEvaSays.randomElement()!
    }
}
