//
//  ViewController.swift
//  Rx_start
//
//  Created by caodedi on 2017/12/22.
//  Copyright © 2017年 caodedi. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let speakerListViewModel = SpeakerListViewModel()
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        speakerListViewModel.data.bind(to: tableView.rx.items(cellIdentifier: "cell")){ _, speaker, cell in
            cell.textLabel?.text = speaker.name
            cell.detailTextLabel?.text = speaker.twitterHandle
            cell.imageView?.image = speaker.image
            
        }
       .disposed(by: disposeBag)
        
        tableView.tableFooterView = UIView()
        
        
        tableView.rx
            .itemSelected
            .map { indexPath in
                self.present(SectionViewController(), animated: true, completion: nil)
            }
            .subscribe{
                print("indexPath.row")
 self.present(SectionViewController(), animated: true, completion: nil)
            }
            .disposed(by: disposeBag)
        
    }
    
    
    

}

//extension ViewController: UITableViewDataSource {
////
////
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//         return speakerListViewModel.data.count
//    }
//
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////
////        let iden: String = "cell"
////        
////        var cell = tableView.dequeueReusableCell(withIdentifier: iden)
////        if (cell == nil) {
////            
////            cell = UITableViewCell(style: UITableViewCellStyle.value1,reuseIdentifier: iden)
////
////        }
////
////        let speaker = speakerListViewModel.data[indexPath.row]
////        print(speaker.name)
////        cell?.textLabel?.text = speaker.name
////        cell?.textLabel?.textColor = UIColor.red
////        cell?.detailTextLabel?.text = speaker.twitterHandle
//////        cell?.imageView?.image = speaker.image
////        return cell!
////        
////    }
////}
////
////
////extension ViewController: UITableViewDelegate {
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        print("You selected \(speakerListViewModel.data[indexPath.row])")
////    }
////}

