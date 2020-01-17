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

    var dataArray = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()


        Music.shared.playFor(0)

        // Do any additional setup after loading the view.
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

//        cell.selectColor()
//        cell.model = dataArray[indexPath.row]
//        cell.delegate = self
//
//        cell.isLast = tableView.isLastCell(index: indexPath)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

//        let VC = NotificationOptionsVC.route(modelNotific: dataArray[indexPath.row])
//        VC.delegate = self
//        self.navigationController?.pushViewController(VC, animated: true)
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }


}

