//
//  myTableViewController.swift
//  marvelApp
//
//  Created by Derek on 2018/8/7.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    struct HeroRole{
        var name:String
        var image:String
        var description:String
    }
    var heroArray = [HeroRole(name: "美國隊長", image: "美國隊長", description: "美國隊長原本沒有超能力，是個瘦弱的年輕人，藉由超人士兵血清刺激其人體潛能，使之轉化為「完美」的姿態。因此美國隊長具有高度的智能、常人遠所不及的力量、敏捷、敏銳度、耐力。他能夠在沒有任何輔助的狀態下臥推1200磅（545kg）的重量。血清也強化了他的新陳代謝機能、能夠將肌肉中的乳酸等有造成疲勞的物質完全代謝掉，這賜給了他正常人完全無法想像的耐久力，能在不到一分鐘的時間內跑完1公里（每秒20米）等，最高時速可高達70公里。也正是因此，使他能夠以假死狀態被冰封了七十年後復生。美國隊長的體細胞對酒精和諸般毒素免疫，不會喝醉，對於絕大多數的疾病也具有免疫力，且血清也使他延緩老化。"),HeroRole(name: "鋼鐵人", image: "鋼鐵人", description: "鋼鐵人擁有賦予他超人力量，超人耐力，飛行能力與多種武器的動力裝甲。此盔甲是由東尼史塔克設計並大多數時間都是由他穿戴的。史塔克是位美國億萬富翁與軍火製造商，以他獨特的生活方式與其聰明才智及天才發明家聞名。其他曾成為鋼鐵人的人包括多年的夥伴與摯友吉姆羅德斯，親信哈洛·「快樂」·霍根，艾迪·麥奇（Eddie March），以及麥可·歐布萊恩（Michael O’Brien）。"),HeroRole(name: "索爾", image: "索爾", description: "索爾（Thor，古諾爾斯語：Þórr，也譯為托爾、霍爾），日耳曼地區稱多納爾（Donar），是北歐神話中負責掌管戰爭與農業的神，職責是保護諸神國度的安全與在人間巡視農作。北歐人相傳每當雷雨交加時就是索爾乘坐馬車出來巡視，因此稱呼索爾為「雷神」。另外，索爾的勇敢善戰在諸神與巨人間是非常有名的。索爾的力量相當巨大，在神話中甚至可以獨自挑戰巨人群，每當諸神被巨人們欺負或者攻擊時，只要索爾一站出來立刻就讓巨人族知難而退。除了索爾本身力量強大之外，「妙爾尼爾」（雷神之鎚）更是讓索爾所向無敵的寶貴武器，因此與諸神敵對的巨人族們相當畏懼索爾：只要索爾在諸神的一天，巨人們幾乎不敢對諸神們輕舉妄動。"),HeroRole(name: "奇異博士", image: "奇異博士", description: "本名是Stephen Vincent Strange，小時候醫治妹妹的經驗，令他決定成為醫生救助他人。在成為醫生後，他的天賦使他的名氣逐漸提高，卻也讓他漸漸迷失自己，把醫術當作賺錢的技術。在家人都因故去世後，他更加貪婪與無人性，直到一次嚴重的車禍，使他雙手受傷，再也無法繼續執行精密的手術。他發瘋般地找尋恢復雙手的方法，但往往都是沒有效果。在某個晚上，他在酒吧喝著悶酒，無意間聽到隔壁的客人在述說西藏的神祕魔法師傳說。於是決定前往西藏試試看。歷經千辛萬苦，他終於見到「Sorcerer Supreme（至尊法師）」：Ancient one。雖然一開始Ancient one因Stephen的人品問題，不願為他醫治。但見其誠心，於是將他納入門下。而Stephen也找尋回自己的真心，成為Dr. Strange。"),HeroRole(name: "星爵", image: "星爵", description: "星爵首次出現於《Marvel Preview》#4 (1976年)，當時還是黑白印刷，由史蒂夫·英格哈特（Steve Englehart）及史蒂夫·甘（Steve Gan）所創作。期後星爵分別間歇出現於《Marvel Super Special》(1979年)、《Marvel Spotlight II》(1980年)、《Marvel Premiere》(1981年)連載中。星爵曾經出現另個一版本，一連三冊名為《Starlord》(Dec 1996 - Feb 1997)。由 Timothy Zahn及 Dan Lawlis所創作。星爵由一個擁有心靈感應名為Sinjin Quarrel所擔任。但此角色之後再也沒出現過。彼得·傑森·奎爾再次回歸於《Thanos》#8-12 (May -Sept 2004)、《Annihilation》(Nov 2005 – May 2007)及《Annihilation: Conquest》(Aug 2007 – Jun 2008)。其中彼得於《Annihilation: Conquest》中的分冊《Annihilation: Conquest - Star-Lord 》(July - Dec 2007)擔當主要角色，為故事主線之一。星爵於一連二十五冊的《Guardians of the Galaxy II》(Jun 2008 - Aug 2009) 連載中擔任星際異攻隊的領袖，保衞銀河系。"),HeroRole(name: "幻視", image: "幻視", description: "奧創為了擊敗他的父親第一代蟻人亨利·皮姆及父親的夥伴復仇者於是便將二戰英雄初代霹靂火改造成賽博格生化人，並且用反派神力人的腦波將之啟動，命名為「幻視」。接著奧創就派幻視去屢次對抗復仇者，起初幻視就如同一般的機器人一樣沒有感情，只會服從命令，但在與復仇者周旋的日子中，他隱藏的人性令他背叛了奧創，加入了復仇者。加入復仇者後他藉由與同伴相處來學習怎麼令自己更像個人，之後他遇到了緋紅女巫，兩人墜入愛河結為夫妻，並生了一對雙胞胎，擁有一個家庭雖然使幻視感到幸福，但也使他因自己不是人類的自卑感而感到壓力。之後神力人改邪歸正加入了復仇者，幻視由於自己的腦波源於神力人而對自己的存在感到懷疑，直到神力人的哥哥死神出現並擄走了他跟神力人，事件結束後幻視的心結解開，他與神力人互稱兄弟，對方的家人也是自己的家人。")]
    
    let photoArray = ["1","2","3","4","5","6"]
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationController?.navigationBar.barTintColor = .white
        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        tableView.rowHeight = 118
        tableView.estimatedRowHeight = 0
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return heroArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gotoview", for: indexPath)
        let hero = heroArray[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont(name: "Helvetica", size: 30)
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 26.0)
        cell.textLabel?.text = hero.name
        cell.imageView?.image = UIImage(named: hero.image)
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotoview", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoview"{
            let svc = segue.destination as? aViewController
            
            if let selectedRow =  self.tableView.indexPathForSelectedRow?.row{
                let heroo = heroArray[selectedRow]
                svc?.photoFromFirstView = photoArray[selectedRow]
                svc?.stringFromFirstView = heroo.description
                svc?.navigationItem.title = heroo.name
                svc?.navigationController?.navigationBar.barTintColor = .white
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = .white
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
