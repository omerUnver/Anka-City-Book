//
//  ViewController2.swift
//  Anka
//
//  Created by M.Ömer Ünver on 22.07.2022.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var rehberNames = [gezi]()
    var secilenRehber : gezi?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        //Rehber Dataları
        let nataVegaAkvaryum = gezi(rehberAdi: "Nata Vega Akvaryum", rehberGorseli: UIImage(named: "akvaryum")!, rehberTexti: "Aqua Vega, Türkiye'nin Ankara ili Mamak ilçesi Doğukent Bulvarı'nda bulunan Nata Vega Outlet içerisinde yer alan Avrupa'nın ikinci, Türkiye'nin ise en büyük tünel akvaryumuna sahip, halka açık akvaryumdur.")
        let anadoluMedeniyetlerMuzesi = gezi(rehberAdi: "Anadolu Medeniyetler Müzesi", rehberGorseli: UIImage(named: "anadoluMediniyetlerMuzesi")!, rehberTexti: "Anadolu Medeniyetleri Müzesi; Ankara'nın Altındağ ilçesinde bulunan bir tarih ve arkeoloji müzesidir. Müzede, Anadolu'da yaşamış olan uygarlıklardan geriye kalan arkeolojik eserler kronolojik olarak sergilenmektedir.")
        let Anitkabir = gezi(rehberAdi: "Anıtkabir", rehberGorseli: UIImage(named: "Anıtkabir")!, rehberTexti: "Anıtkabir, Türkiye'nin başkenti Ankara'nın Çankaya ilçesinde yer alan ve Mustafa Kemal Atatürk'ün anıt mezarını içeren komplekstir. Emin Onat ile Orhan Arda'nın tasarımı olan Anıtkabir'in 1944'te başlanan inşası 1953'te tamamlanmıştır.")
        let Atakule = gezi(rehberAdi: "Atakule", rehberGorseli: UIImage(named: "atakule")!, rehberTexti: "Atakule Alışveriş Merkezi, Ankara'da, döner restoranlı kulesi ile meşhur alışveriş merkezi. Çankaya semtinde, Cinnah Caddesi ile Çankaya Caddesi'nin kesiştiği, Zübeyde Hanım Meydanı'na cepheli konumdadır.")
        let beypazari = gezi(rehberAdi: "Beypazarı Evleri", rehberGorseli: UIImage(named: "beypazari")!, rehberTexti: "Evlerin iskeleti ahşaptır ve bu ahşap, tatlı kireç denilen malzemeyle sıvanmıştır. Odalardaki kirli havayı ve nemi alan yöreye özgü bu malzeme, Beypazarı evlerini farklı kılar. Zemin katları taştan, geri kalan kısmı ahşaptan oluşan bu evlerin girişinde demir kapılı mahzenler bulunur.")
        let caddeler = gezi(rehberAdi: "Ankara'nın Meşhur Caddeleri", rehberGorseli: UIImage(named: "caddeler")!, rehberTexti: "Ankara'nın meşhur caddelerine uğramadan olmaz tabi ki; Karanfil, 7. cadde, Tunalı Hilmi vs. buluşma mekanlarıdır. Alışveriş yapılır, gezilir, aynı zamanda kafelerde, restoranlarda vakit geçirebilirsiniz.")
        let rahmiKocMuzesi = gezi(rehberAdi: "Çengel Han Rahmi Koç Müzesi", rehberGorseli: UIImage(named: "cengelHanRahmiKocMuzesi")!, rehberTexti: "Çengelhan Rahmi M. Koç Müzesi, Ankara'nın Altındağ ilçesinde bulunmaktadır. Ankara'nın ilk sanayi müzesidir. Ankara Kalesi'nin ana giriş kapısının karşısında, eskiden At Pazarı olarak bilinen mevkide yer alan Çengel Han adlı tarihi kervansarayda yer alır.")
        let etnografya = gezi(rehberAdi: "Etnografya Müzesi", rehberGorseli: UIImage(named: "etnografyaMuzesi")!, rehberTexti: "Ankara Etnografya Müzesi, Ankara'nın Altındağ ilçesinde bulunmaktadır. Kurtuluş Savaşı'nda cuma namazlarının kılındığı eski adı Namazgâh Tepesi olan yerde kuruldu.")
        let genclikParki = gezi(rehberAdi: "Gençlik Parkı", rehberGorseli: UIImage(named: "genclikParki")!, rehberTexti: "Altındağ İlçesi'nin Ulus Semti'nde bulunan gençlik parkı, Ankara'nın tarihi parklarından biridir. Cumhuriyet‘in ilk yıllarında Ankara‘nın planını yapmak üzere davet edilen Hermann Jansen, Gençlik Parkı‘nı çağdaş bir eğlence-dinlence mekânı olarak tasarlamıştı. Böylelikle hem Ankara Çayı‘nın bataklık alanı kurutulacak hem de Cumhuriyet‘in yeni başkentinde yaşayanlar için kentsel açık ve kamusal alanların kullanımı konusunda bir örnek oluşturulacaktı. Plan, 1936‘da Atatürk‘ün başkanlığında yapılan bir Bakanlar Kurulu toplantısında onaylanmış, Gençlik Parkı 19 Mayıs 1943 Gençlik ve Spor Bayramı‘nda açılmıştır.")
        let haciBayram = gezi(rehberAdi: "Hacı Bayram Veli Camii", rehberGorseli: UIImage(named: "hacıBayram")!, rehberTexti: "Hacı Bayram Câmii, Ankara'nın Altındağ ilçesinin Ulus semtinde bulunan tarihi cami. Augustus Tapınağı'nın bitişiğindedir. İlk zaviye olarak yapılış tarihi hicri 831 yılı olan caminin ilk mimarı Mimar Mehmet Bey hakkında bilgi bulunmamaktadır.")
        let hamamonu = gezi(rehberAdi: "Hamamönü", rehberGorseli: UIImage(named: "hamamonu")!, rehberTexti: "Hamamönü, adını bir Türk boyu olan Oğuzların Bayındır boyu beylerinden Karacabey’in yaptırdığı çifte hamamdan almıştır. Tarihi Karacabey Hamamı burada bulunmaktadır. İstiklal Marşı’nın yazıldığı ve günümüzde Mehmet Akif Ersoy Müze Evi olarak kullanılan yapı ve bu yapının içerisinde yer aldığı Mehmet Akif Ersoy Parkı da Hamamönü’ndeki önemli duraklardandır.")
        let harikalarDiyari = gezi(rehberAdi: "Harikalar Diyarı", rehberGorseli: UIImage(named: "harikalarDiyari")!, rehberTexti: "Yaklaşık 771 bin metrekaresi yeşil alan, 330 bin metrekaresi yol ve meydanlar, 40 bin metrekaresi otopark alanı, 67bin metrekaresi yapı alanı ve 92 bin metrekaresi de su alanları olarak planlanan Harikalar Diyarı içinde, çocuklar için 25bin metrekarelik bir alanda kurulmuş bir Masal Adası da yer alır. Özel bir peyzaj ve ışıklandırma sistemiyle yapılan Masal Adası’nda, çeşitli masal kahramanlarının kendilerine has mekanlarında canlandırıldığı ve filmlerinin gösterildiği 12 adet cep sineması bulunmaktadır. Bu bölümde; Ergenekon adlı Türk destanında adı geçen Asena isimli dişi kurt, bir Türk kahramanı olan Tarkan, Dede Korkut hikayelerinde destanı anlatılan Boğaçhan yer alırlar. Halk edebiyatımızda saygın bir yeri olan halk şairimiz Karacaoğlan, hiciv ustası ve bilge Hoca Nasrettin, masal kahramanlarımız Keloğlan gibi şahsiyetler, masal dünyasının şaheserlerinden Alaaddin ile Sihirli Lambası, Geleneksel Türk Tiyatrosu'nun vazgeçilmez kahramanları Hacivat ve Karagöz aynı mekanı paylaşırlar. Yabancı kahramanlar arasında ise Roma dönemi çizgi film kahramanı Asteriks, Taş Devri kahramanları Fred Çakmaktaş ve Ailesi ile evrensel insani değerleri yansıtan J.Swift’in unlu eseri Gulliver’in Seyahatleri’nde adı geçen Dağ Adam, Amerikan yaşam tarzının bir kesitini yansıtan Red Kit ve Daltonlar gibi karakterler sergilenmektedir. Parkta, 2 bin 800 metrekarelik bir alanda, 550 kişilik büyük ana salon ve 2 yarı salondan oluşan bir nikah salonu, göl ve 5 bin kişilik yarı açık göl anfisi, kıyı çay bahçesi, Anadolu mutfağının örneklerini sergileyen Anadolu Sofrası Lokantası, deniz ürünleri lokantası, atıştırma mutfakları, büfeler ve su depoları yer alır. Büyük bir yönetim binası, 350 kişilik modern toplantı salonu, sergi, sinema ve tiyatro salonları bulunan parkta özürlülerin de yararlanabileceği açık ve kapalı yüzme havuzları bulunur. Futbol, basketbol, voleybol, hentbol sahalarını da içeren parkta, kır kahvesi, kafeteryalar, piknik alanları, otoparklar, bisiklet ve yaya yolları bulunmaktadır. Türkiye’nin en büyük parkı olan Harikalar Diyarı, başkent ve yakın çevresine hizmet verecek olan 1 milyon 300 bin metrekarelik alanıyla aynı zamanda Avrupa kıtasının da en büyük kentsel parklarından birisidir.")
        let hayvanatBahcesi = gezi(rehberAdi: "Hayvanat Bahçesi", rehberGorseli: UIImage(named: "hayvanatBahcesi")!, rehberTexti: "Atatürk Orman Çiftliği Hayvanat Bahçesi, 1933 yılında tarıma ve halka zarar veren hayvanları teşhir amacıyla Atatürk Orman Çiftliği içinde kurulmuştur.")
        let kocatepe = gezi(rehberAdi: "Kocatepe Camii", rehberGorseli: UIImage(named: "kocatepe")!, rehberTexti: "Kocatepe Camii, Ankara'nın Kocatepe semtinde 1967'de inşaatına başlanan ve Türkiye Diyanet Vakfı tarafından 1987'de inşaatı tamamlanan cami.")
        let kugulu = gezi(rehberAdi: "Kuğulu Parkı", rehberGorseli: UIImage(named: "kugulu")!, rehberTexti: "Parkın adı, kurulduğu yıllarda Viyana Belediyesi tarafından hediye edilen beyaz kuğulardan gelir. Kuğulu parkın kuğularından üçü daha sonra Seymenler parkına nakledilmiştir. Bu kuğular daha sonra değişik zamanlarda Kuğulu Park'a geri dönmek için uçarken yüksek binalara veya ağaçlara çarpma sonucu ölmüşlerdir.")
        let ilkMeclis = gezi(rehberAdi: "İlk Meclis", rehberGorseli: UIImage(named: "meclis")!, rehberTexti: "Birinci Dönem Büyük Millet Meclisi ya da kısaca Birinci Meclis, 23 Nisan 1920'de Ankara'da toplanmış, 1 Nisan 1923'te yeni seçim kararı alarak 15 Nisan 1923'te son oturumunu yapmıştır. Yeni Türk devletinin kurucu meclisi olarak kabul edilir.")
        let moganGolu = gezi(rehberAdi: "Mogan Gölü", rehberGorseli: UIImage(named: "moganGolu")!, rehberTexti: "Mogan Gölü, Ankara'nın Gölbaşı ilçesinde bulunan bir set gölüdür. Göl ve çevresi, Barselona Sözleşmesi çerçevesinde Türkiye'de ilan edilen 15 özel koruma bölgesinden bir tanesini oluşturan Gölbaşı Özel Çevre Koruma Bölgesi içinde yer alır.")
        let parklar = gezi(rehberAdi: "Parklar", rehberGorseli: UIImage(named: "parklar")!, rehberTexti: "Abdi İpekçi Parkı, Kurtuluş Parkı, Seğmenler Parkı Altınpark, Ankara Botanik Parkı, Göksu Park, Güvenpark.")
        let romaHamami = gezi(rehberAdi: "Tarihi Roma Hamamı", rehberGorseli: UIImage(named: "romaHamami")!, rehberTexti: "Ankara Roma Hamamı, Ankara'nın Altındağ ilçesinin Ulus Meydanı'ndan Yıldırım Beyazıt Meydanı'na uzanan Çankırı Caddesi üzerinde yer almaktadır. 3. yüzyılda Septimius Severus'un oğlu Roma İmparatoru Caracalla tarafından Sağlık Tanrısı Asklepios adına yapılmıştır.")
        let sogukSu = gezi(rehberAdi: "Soğuk Su Milli Parkı", rehberGorseli: UIImage(named: "sogukSu")!, rehberTexti: "Soğuksu Millî Parkı, Ankara'nın Kızılcahamam ilçesinde yer alan ve 19 Şubat 1959'da kurulan bir millî parktır. Ankara şehir merkezine 80 kilometre uzaklıktadır. Parkın volkanik bölge olmasından dolayı, çevresindeki sıcak ve soğuk su kaynakları kaplıca olarak değerlendirilmektedir.")
        let teleferik = gezi(rehberAdi: "Teleferik Turları", rehberGorseli: UIImage(named: "teleferik")!, rehberTexti: "T1 Teleferik Hattı, Ankara'nın Yenimahalle ilçesinde hizmet veren teleferik hattıdır. EGO Genel Müdürlüğü tarafından işletilmektedir. 17 Haziran 2014 tarihinde Yenimahalle - Yunus Emre güzergâhında faaliyete geçmek üzere hizmete açılmıştır. 20 Mayıs 2015 tarihinde ise TRT Seyir ve Şentepe istasyonları açılmıştır.")
        let tuzGolu = gezi(rehberAdi: "Tuz Gölü", rehberGorseli: UIImage(named: "tuzGolu")!, rehberTexti: "Tuz Gölü, Türkiye'nin İç Anadolu Bölgesi'nde Ankara, Konya ve Aksaray illerinin sınırının kesiştiği yerde yer alan tuz gölüdür. Türkiye'nin tuz ihtiyacının %40'ı bu gölden sağlanır.")
        let ulucanlar = gezi(rehberAdi: "Ulucanlar Cezaevi", rehberGorseli: UIImage(named: "ulucanlar")!, rehberTexti: "Ankara Merkez Kapalı Ceza ve Tutukevi veya Ulucanlar Cezaevi, 1925 ve 2006 yılları arasında Ankara'nın Altındağ ilçesinin Ulucanlar semtinde faaliyet göstermiş olan bir cezaevidir.")
        
        rehberNames.append(nataVegaAkvaryum)
        rehberNames.append(anadoluMedeniyetlerMuzesi)
        rehberNames.append(Anitkabir)
        rehberNames.append(Atakule)
        rehberNames.append(beypazari)
        rehberNames.append(caddeler)
        rehberNames.append(rahmiKocMuzesi)
        rehberNames.append(etnografya)
        rehberNames.append(genclikParki)
        rehberNames.append(haciBayram)
        rehberNames.append(hamamonu)
        rehberNames.append(harikalarDiyari)
        rehberNames.append(hayvanatBahcesi)
        rehberNames.append(kocatepe)
        rehberNames.append(kugulu)
        rehberNames.append(ilkMeclis)
        rehberNames.append(moganGolu)
        rehberNames.append(parklar)
        rehberNames.append(romaHamami)
        rehberNames.append(sogukSu)
        rehberNames.append(teleferik)
        rehberNames.append(tuzGolu)
        rehberNames.append(ulucanlar)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = rehberNames[indexPath.row].adi
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rehberNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenRehber = rehberNames[indexPath.row]
       
        
        performSegue(withIdentifier: "toThirdView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdView"{
            let destinationVC = segue.destination as! ViewController3
            destinationVC.secilenRehberNames = secilenRehber
           
        }
    }
}
  


