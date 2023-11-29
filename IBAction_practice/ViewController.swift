//
//  ViewController.swift
//  IBAction_practice
//
//  Created by stu on 2023/11/27.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {

    var index = 0
    let movieImageArray = ["咒術回戰1", "獵人劇場版2", "獵人劇場版3"]
    let movieNameArray = ["劇場版咒術迴戰0", "獵人劇場版：\n緋色幻影", "獵人劇場版：最終任務"]
    let movieDescribeArray = ["《劇場版咒術迴戰０》為《咒術迴戰》前傳故事，描述一對青梅竹馬的戀人「乙骨憂太」與「祈本里香」原本約定好長大後要結婚、要永遠在一起，但里香卻在一場車禍中橫死，死後化為強大怨靈依附在乙骨身邊，為此所苦的乙骨一心求死。", "隱居於樹木繁盛、風光秀美的森林中生活的少數民族——窟盧塔族擁有被世人稱為-七大美色-之一的「火紅眼」，「火紅眼」是窟盧塔族人在情緒激動或是憤怒時，瞳孔會迅速轉為緋紅色，因為這個原因窟盧塔族總是受到外界的歧視，因此隱居此遠方森林還禁止族人到外面。但是他們在四年前遭到S級危險度的盜賊組織——幻影旅團給屠殺殆盡而被滅族，全族中只有一人——酷拉皮卡倖免於難。酷拉皮卡為了找回他的族人們的雙眼並且向滅族仇人幻影旅團展開復仇決心成為獵人，他在這過程中跟小傑、雷歐力和奇犽結為好友。", "過去的獵人協會存在著擁有強大力量的獵人們。兩方都化為「光明」和「黑暗」卻因為某個原因走向不同的道路。十多年前，隸屬於獵人協會的黑暗面、負責專門執行獵人協會交付的秘密任務的地下組織——黑影由其領導者——傑德（ジェド）的指揮下變得活躍，但是當傑德因不明原因而走向歧途被他的昔日好友也就是獵人協會主席會的會長——艾薩克·尼特羅（アイザック＝ネテロ）給討伐後，黑影遭到獵人協會地背叛並且被「清凜隊」殲滅。"]
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var showPic: UIImageView!
    @IBOutlet weak var movieDescribe: UITextView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextPage(_ sender: Any) {
        index = (index + movieImageArray.count + 1) % movieImageArray.count
        
        updateUI()
        
    }
    
    @IBAction func prePage(_ sender: Any) {
        
        index = ( index + movieImageArray.count - 1) % movieImageArray.count
        
        updateUI()
        
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        index = segmentControl.selectedSegmentIndex
        updateUI()
    }
    
    
    @IBAction func pageControl(_ sender: Any) {
        index = pageControl.currentPage
        updateUI()
    }
    
    func updateUI() {
        //更新圖片
        showPic.image = UIImage(named: "\(movieImageArray[index])")
        //更新文字
        movieName.text = "\(movieNameArray[index])"
        movieDescribe.text = "\(movieDescribeArray[index])"
       segmentControl.selectedSegmentIndex = index
       pageControl.currentPage = index
        
    }
    
}

