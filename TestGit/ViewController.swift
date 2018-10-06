//
//  ViewController.swift
//  TestGit
//
//  Created by Sinchan Maitri on 06/10/18.
//  Copyright © 2018 Sinchan Maitri. All rights reserved.
//

import UIKit
import WebKit
import web3swift


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func buttonTapped(sender:Any){
        
        let address = EthereumAddress("0xa5a82b196724aa24cb61e0db4e5a7ba2c3586632")!
        let web3Main = Web3.InfuraMainnetWeb3()
        let balanceResult = web3Main.eth.getBalance(address: address)
        guard case .success(let balance) = balanceResult else {return}
        
        
        
        print("Hey, changes made")
        var h = String(describing: Web3.Utils.formatToEthereumUnits(balance))
        let ethreceipt = web3Main.eth.getTransactionReceipt("0x06e2da6d0f73889d1e43a0fae3f9e283d53fa046e7528ff3be91a2fc2742d4f2")
        print("\(web3Main.eth.getBlockByNumber(ethreceipt.value?.blockNumber ?? 0).value?.size) + \n")
        print("\(ethreceipt)\n")
        print(h)
        
    }


}

