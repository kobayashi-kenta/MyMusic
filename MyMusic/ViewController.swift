//
//  ViewController.swift
//  MyMusic
//
//  Created by Kenta on 2020/12/13.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //シンバルmp３ファイル指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    //シンバル用プレイヤーインスタンスの追加
    var cymbalPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        do {
        cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        
        cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました！")
        }
    }
    
    
    //ギターmp3ファイル指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    //ギター用プレイヤーインスタンスの追加
    var guitarPlayer = AVAudioPlayer()
    
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
            
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }
    
    //バックミュージックの音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    //バックミュージック用の音源インスタンスを作成
    
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do {
            //バックミュージック用のプレイヤーに音源ファイルを指定
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath,fileTypeHint: nil)
            
            //リピート設定
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
    
    //Stopボタンの処理
    
    @IBAction func stop(_ sender: Any) {
         backmusicPlayer.stop()

    }
}

