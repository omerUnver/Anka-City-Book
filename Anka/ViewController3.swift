//
//  ViewController3.swift
//  Anka
//
//  Created by M.Ömer Ünver on 27.07.2022.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rehberLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    var secilenRehberNames :gezi?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rehberLabel.text = secilenRehberNames?.adi
        imageView.image = secilenRehberNames?.gorseli
        textView.text = secilenRehberNames?.texti
    
    }
    


}
