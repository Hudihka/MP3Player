//
//  FirstVC.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let manager = Music.shared
    var dataArray = [MusicStruct]()

    override func viewDidLoad() {
        super.viewDidLoad()

        desingTableView()
        dataArray = manager.arraySrtuct

    }


}

extension FirstVC: UITableViewDelegate, UITableViewDataSource{

    func desingTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.clear

        self.tableView.register(UINib(nibName: MusicCell.className, bundle: nil),
                                forCellReuseIdentifier: MusicCell.className)

    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicCell.className, for: indexPath) as?
            MusicCell else {
                fatalError("MusicCell")
        }

        cell.model = dataArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        manager.playFor(indexPath.row)

    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }


}

