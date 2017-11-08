//
//  ViewController.swift
//  sampleMapKit
//
//  Created by 加藤　大起 on 2017/11/08.
//  Copyright © 2017年 Taiki Kato. All rights reserved.
//

import UIKit
import MapKit //地図用のフレームワーク読み込み

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Ayalaモールを中心とした地図を表示
        
        //1.中心となる座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        //2.縮尺を設定
        let span = MKCoordinateSpanMake(0.03, 0.03)
        
        //3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        //４マップviewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
        //アヤラにピンを立てる
        
        //1.ピンオブジェクトを生成
        let centerPin = MKPointAnnotation()
        
        //２.ピンの座標を設定
        centerPin.coordinate = coodinate
        
        //3.タイトル、サブタイトルを設定（タップした時に出る吹き出しの情報）
        centerPin.title = "アヤラショッピングモール"
        centerPin.subtitle = "なんでもあるよ"
        //4.mapViewにピンを追加
        mapView.addAnnotation(centerPin)
        
        //TODO:ピンをもう一つ立ててみましょう
        let smPin = MKPointAnnotation()
        
        smPin.coordinate = CLLocationCoordinate2DMake( 10.311987, 123.918199)
        smPin.title = "SMモール"
        smPin.subtitle = "SM最高っ♡"
        mapView.addAnnotation(smPin)

        let jyPin = MKPointAnnotation()
        
        jyPin.coordinate = CLLocationCoordinate2DMake(10.330426, 123.898757)
        jyPin.title = "JYモール"
        jyPin.subtitle = "ラーメンうまっ♡"
        mapView.addAnnotation(jyPin)
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

