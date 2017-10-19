//
//  DetailKisahViewController.swift
//  NewCellCustomCell
//
//  Created by Rizki Syaputra on 10/19/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class DetailKisahViewController: UIViewController {
    
    @IBOutlet weak var detailIsi: UILabel!
    @IBOutlet weak var detailCategori: UILabel!
    @IBOutlet weak var detailTgl: UILabel!
    @IBOutlet weak var detailgambar: UIImageView!
    @IBOutlet weak var detailJudul: UILabel!
    //deklarasi variable untuk menampung data yang dikirim
    var passJudul:String?
    var passGambar:String?
    var passIsi:String?
    var passTgl:String?
    var passCat:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailIsi.numberOfLines = 6
        
        detailJudul.text = passJudul
        detailCategori.text = passCat
        detailTgl.text = passTgl
        detailIsi.text = passIsi
        detailgambar.image = UIImage(named: passGambar!)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
