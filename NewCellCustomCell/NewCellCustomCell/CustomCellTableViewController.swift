//
//  CustomCellTableViewController.swift
//  NewCellCustomCell
//
//  Created by Rizki Syaputra on 10/19/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class CustomCellTableViewController: UITableViewController {
    
    var catSelected:String?
    var gambarSelected:String?
    var tglSelected:String?
    var judulSelected:String?
    var isiSelected:String?
    
    let category:[String] = ["Sejarah", "Aqidah", 
                             "Science", "Sejarah", "Islam"]
    let tglData : [String] = ["Minggu/ 22 Oktober 2017", "Senen / 23 Oktober 2017", "Selasa / 25 Oktober 2017", "Rabu / 26 Oktober 2017", "Kamis / 27 Oktober 2017"]
    let judulBerita : [String] = ["17 Ramadhan: Peristiwa Pembunuhan Ali bin Abu Thalib", "16 Ramadhan: Wafatnya Sejarawan Islam, al-Maqrizi", "15 Ramadhan: Kemenangan Umat Islam Atas Mongol di Perang Ain Jalut", "14 Ramadhan: Runtuhnya Daulah Umayyah", "12 Ramadhan: Berdirinya Jami’ Ibnu Thulun"]
    
    let isiBerita : [String] = ["Langkah berani dan tegas Amirul Mukminin Ali bin Abi Thalib memerangi orang-orang Khawarij di Nahrawan menimbulkan dendam di kalangan para pemberontak ini. Sampai akhirnya muncullah peristiwa yang mengantarkan sepupu Rasulullah shallallahu ‘alaihi wa sallam ini menyandang syahid di akhir hayat", "Meskipun namanya Ahmad bin Ali, tapi ia lebih dikenal dengan nama al-Maqrizi. Nisbat kepada sebuah kampung yang bernama al-Maqarizah. Sebuah kampung dari kampung-kampung yang ada di Ba’labak. Ayahnya hidup di Kairo. Ia menyandang beberapa jabatan. Di antaranya menjabat sebagai hakim dan dewan hisbah.", "Pada Bulan Ramadhan tahun 658 H, Sultan Mesir, Saifuddin Quthuz, keluar dari Mesir bersama pasukan Mesir, Syam, dll. Ia memerintahkan panglimanya, Baybars, untuk berangkat terlebih dahulu. Mencari-cari berita tentang persiapan Pasukan Mongol.", "Khalifah Umayyah, Marwan II, sibuk memadamkan pemberontakan dan pergolakan di berbagai daerah. Namun ia luput dengan apa yang terjadi di Timur. Khususnya wilayah Khurasan yang menjadi markas revolusi Bani Abbasiyah. Pemberontakan menyebar di berbagai daerah. Secara umum, Bani Abbasiyah lah penyulut api pemberontakan itu. Awalnya pemberontakan dilakukan dengan provokasi-provokasi kontra pemerintah. Sampai akhirnya, mereka merasa telah datang waktunya untuk melakukan perlawanan terang-terangan.", "Jami’ Ibnu Thulun adalah bukti nyata dari betapa hebatnya arsitektur dunia Islam. Masjid besar di Kairo ini sudah berdiri kokoh sejak tahun 265 H atau 879 M. Hingga sekarang, bangunan itu masih dalam bentuk aslinya. Jami’ Ibnu Thulun juga menjadi saksi, bagaimana umat Islam menyelaraskan hubungan dunia dan akhirat. Masjid yang menjadi ruh ukhrowi di dunia juga difungsikan tempat belajar. Mulai dari belajar agama hingga kedokteran."]
    
    let gambarBerita : [String] = ["berita1.jpeg", "berita2.jpg", "berita3.jpg", "berita4.jpg","berita5.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //setiing height tavble view
        tableView.estimatedRowHeight = 650.0
        tableView.rowHeight = UITableViewAutomaticDimension

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return judulBerita.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBerita", for: indexPath) as! BeritaTableViewCell

        // Configure the cell...
        
        cell.labelJudul.text = judulBerita[indexPath.row]
        cell.labelTanggal.text = tglData[indexPath.row]
        cell.labelKategori.text = category[indexPath.row]
        cell.labelIsi.text = isiBerita[indexPath.row]
        
        let dataImage :UIImage = UIImage(named: gambarBerita[indexPath.row])!
        
        cell.gambarBerita.image = dataImage

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //mengecek dta yang dikirim
        print("Row \(indexPath.row)selected")
        //memasukkan data ke variable namaSelected dan imageSeleted ke masing2 variable nya
        judulSelected = self.judulBerita[indexPath.row]
        gambarSelected = self.gambarBerita[indexPath.row]
        
        tglSelected = self.tglData[indexPath.row]
        catSelected = self.category[indexPath.row]
        isiSelected = isiBerita[indexPath.row]
        
        //memanggil segue passDataDetail
        performSegue(withIdentifier: "detailKisah", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //mengecek apakah segue nya ada atau tidak
        if segue.identifier == "detailKisah" {
            //kondisi ketika segue nya ada
            //mengirimkan data ke detailViewController
            let kirimData = segue.destination as! DetailKisahViewController
            //mengirimkan data ke masing2 variable
           kirimData.passJudul = judulSelected
            kirimData.passCat = catSelected
            kirimData.passTgl = tglSelected
            kirimData.passIsi = isiSelected
            kirimData.passGambar = gambarSelected
            
            
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
