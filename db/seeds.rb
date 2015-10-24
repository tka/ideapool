# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Category.delete_all
%w{開放政府 開放資料 社會參與 新媒體應用 政策共筆 g0v基礎建設}.each do |name|
  Category.create(name: name)
end

Project.delete_all
[{
  "name":"中央政府總預算視覺化",
  "img":"/imgs/projectimg/budget.png",
  "desc":"g0v 社群的第一個專案。將大量難以閱讀的預算資料運用鳥瞰圖、變化圖、國債鐘等互動圖表，依比例呈現中央政府各部門的預算，開放網友評論。budget.g0v.tw",
  "link":"http://budget.g0v.tw"
},
{
  "name":"國會大代誌",
  "img":"/imgs/projectimg/ly.png",
  "desc":"持續開發的開放國會長期計畫。可即時顯示國會行程、修法進度、法條版本比較，還推播到 Twitter 供人訂閱。除了文字之外還整合了國會影像，標示每一位委員的發言時間供搜尋。ly.g0v.tw立院專案討論區",
  "link":"http://ly.g0v.tw"
},
{
  "name":"立院影城",
  "img":"/imgs/projectimg/ivod.jpg",
  "desc":"開放國會計畫的一部分。即時播放立法院議事影音直播 ivod，突破立法院原網站 IE only 限制，可跨平台收看並有互動功能。ivod.ly.g0v.tw立院專案討論區",
  "link":"http://ivod.ly.g0v.tw"
},
{
  "name":"立院 IVOD youtube 備份",
  "img":"/imgs/projectimg/image.png",
  "desc":"持續開發的開放國會長期計畫。可即時顯示國會行程、修法進度、法條版本比較，還推播到 Twitter 供人訂閱。除了文字之外還整合了國會影像，標示每一位委員的發言時間供搜尋。ivod.ly.g0v.tw立院專案討論區",
  "link":"http://ivod.ly.g0v.tw"
},
{
  "name":"開放政治獻金",
  "img":"/imgs/projectimg/donation.png",
  "desc":"在監察院不提供數位資料的情況下，號召群眾印出文件，以鄉民OCR方式將政治獻金資料數位化。用鍵盤和選票，落實陽光法案，照亮政商關係。facebook專頁、政治獻金數位化行動本部共筆",
  "link":"https://www.facebook.com/cy.sunshine"
},
{
  "name":"立委投票指南",
  "img":"/imgs/projectimg/vote.png",
  "desc":"替立委排名，依數據列出缺席、不投票、脫黨跑票、修正法案數、臨時提案數等的立委排行。也提供表決視覺化名單，表決、法案、臨時提案的關鍵字搜尋。vote.ly.g0v.tw意見回饋共筆、立院專案討論區",
  "link":"http://vote.ly.g0v.tw"
},
{
  "name":"議員投票指南",
  "img":"/imgs/projectimg/councils.png",
  "desc":"運用鳥瞰圖、變化圖、國債鐘等互動圖表，依比例呈現中央政府各部門的預算，開放網友評論。councils.g0v.tw意見回饋共筆",
  "link":"http://councils.g0v.tw"
},
{
  "name":"公務人員出國考察追蹤網",
  "img":"/imgs/projectimg/image.png",
  "desc":"即時顯示國會行程、修法進度，還推播到 Twitter 供人訂閱。除了文字之外還整合了國會影像，標示每一位委員的發言時間供搜尋。report.nat.g0v.tw",
  "link":"http://report.nat.g0v.tw/"
},
{
  "name":"零時資料中心",
  "img":"/imgs/projectimg/data.png",
  "desc":"description coming soondata.g0v.tw",
  "link":"http://data.g0v.tw"
},
{
  "name":"地方的資料需要普查",
  "img":"/imgs/projectimg/data.png",
  "desc":"description coming soonlocal.data.g0v.tw",
  "link":"http://local.data.g0v.tw"
},
{
  "name":"萌典",
  "img":"/imgs/projectimg/moedict.png",
  "desc":"教育部國語、臺語、客語辭典民間版，提供筆順動畫、真人發音、英/法/德文對照、兩岸詞彙對照等功能。網站目前每月提供數百萬人次的服務，行動裝置 App 用戶逾十萬人。moedict.tw3du.tw",
  "link":"http://moedict.tw"
},
{
  "name":"全國重度級急診即時看板",
  "img":"/imgs/projectimg/er.png",
  "desc":"目前資料僅包含衛福部要求公開的重度級急救責任醫院共 31 所（其他一般及中度級 160 所急救責任醫院，目前尚無公開資料），可依照類型或醫院顯示等待住院、加護病房與推床人數，也呈現滿床通報資訊。各醫院更新資料速度不同，本站每 20 分鐘抓取一次，使用者端也可自訂更新頻率，還可依縣市個別顯示。er.mohw.g0v.tw開發共筆",
  "link":"http://er.mohw.g0v.tw"
},
{
  "name":"台灣公司登記資料",
  "img":"/imgs/projectimg/company.png",
  "desc":"description coming sooncompany.g0v.ronny.tw",
  "link":"http://company.g0v.ronny.tw/"
},
{
  "name":"台灣公司關係圖",
  "img":"/imgs/projectimg/companygraph.png",
  "desc":"description coming sooncompany-graph.g0v.ronny.tw",
  "link":"http://company-graph.g0v.ronny.tw/"
},
{
  "name":"法規亦毒器（法規易讀器）",
  "img":"/imgs/projectimg/law.png",
  "desc":"將網頁中的法規與條號都轉變成連結，讓您快速查閱指定條文。偵測網頁中提到的法規與法條，滑鼠移於其上時即可看該法規或該條文的內容，點選時即連向[全國法規資料庫]關於該法規或條文的頁面。亦支援大法官解釋的連結與預覽。Chrome Plug-in",
  "link":"https://chrome.google.com/webstore/detail/%E6%B3%95%E8%A6%8F%E4%BA%A6%E6%AF%92%E6%B0%A3/iedodmlnmhobigohbkalkkjlbmdkjalj?hl=zh-TW"
},
{
  "name":"環境儀表板（空污/雨量）",
  "img":"/imgs/projectimg/air.png",
  "desc":"description coming soonenv.g0v.tw",
  "link":"http://env.g0v.tw/"
},
{
  "name":"petneedme",
  "img":"/imgs/projectimg/pet.png",
  "desc":"description coming soonpetneed.me",
  "link":"http://petneed.me/"
},
{
  "name":"你被服貿了嗎",
  "img":"/imgs/projectimg/tisa.png",
  "desc":"【你被服貿了嗎？】是行業對照小幫手，找到營業項目、翻譯承諾項目通通不用自己來。只要打幾個字、點幾下滑鼠，快速查詢受影響範圍，也對結果表態。tisa.g0v.tw",
  "link":"https://tisa.g0v.tw"
},
{
  "name":"自經區正反意見比較表",
  "img":"/imgs/projectimg/image.png",
  "desc":"將自經區正反意見條列fepztw.github.io",
  "link":"http://fepztw.github.io/"
},
{
  "name":"hackfoldr",
  "img":"/imgs/projectimg/hackfoldr.png",
  "desc":"description coming soonhackfoldr.org",
  "link":"http://hackfoldr.org/"
},
{
  "name":"123 打道掛",
  "img":"/imgs/projectimg/123.png",
  "desc":"description coming soon123.g0v.today",
  "link":"http://123.g0v.today"
},
{
  "name":"公民記者證產生器",
  "img":"/imgs/projectimg/reporter.png",
  "desc":"description coming soong0v.github.io/reporter/",
  "link":"http://g0v.github.io/reporter/"
},
{
  "name":"啄木鳥挑錯字活動",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soonmoedict.tw/dodo",
  "link":"https://www.moedict.tw/dodo/"
},
{
  "name":"新聞小幫手",
  "img":"/imgs/projectimg/newshelper.png",
  "desc":"description coming soonnewshelper.g0v.tw、facebook 專頁",
  "link":"http://newshelper.g0v.tw/"
},
{
  "name":"政誌",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soonfact.g0v.tw",
  "link":"http://fact.g0v.tw"
},
{
  "name":"歷史四大報（腿新聞）",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soonoldpaper.g0v.ronny.tw",
  "link":"http://oldpaper.g0v.ronny.tw/"
},
{
  "name":"inLiveTW",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming sooninLiveTW 平台",
  "link":"http://inlivetw.github.io/enter/"
},
{
  "name":"時間地圖",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soontimemap.kuansim.com專案討論區",
  "link":"http://timemap.kuansim.com/"
},
{
  "name":"研考會開放資料授權條款共筆",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soon"
},
{
  "name":"開放資料政策社群意見",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soon\n"
},
{
  "name":"g0v 授權中心",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soong0v.github.io/moc-license-center",
  "link":"http://g0v.github.io/moc-license-center/"
},
{
  "name":"g0v 新手村",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soon8bit.g0v.tw",
  "link":"http://8bit.g0v.tw/"
},
{
  "name":"斧頭幫大挑戰",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soonaxe.g0v.tw",
  "link":"http://axe.g0v.tw/"
},
{
  "name":"g0v 公報",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soong0v 公報",
  "link":"http://g0v.github.io/g0vTxT/#/communiqueViewer"
},
{
  "name":"g0v 共筆貢獻視覺化",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soong0v 共筆",
  "link":"http://g0v.github.io/g0vTxT/#/visualize"
},
{
  "name":"g0v 社群動態視覺化",
  "img":"/imgs/projectimg/image.png",
  "desc":"description coming soong0v.github.io/g0vis",
  "link":"http://g0v.github.io/g0vis/"
},
{
  "name":"演講．課程",
  "img":"/imgs/projectimg/image.png",
  "desc":"二十多位社群講者一年多進行近六十場各地演講，分享開源、開放的社會參與經驗，邀請單位包括台灣中央及地方公部門、各級學校、研究單位、NGO團體，以及國際開放政府團體，演講地跨亞歐與南北美。g0v.tw/talk",
  "link":"http://g0v.tw/talk.html"
}].each do |obj|
  x = Project.new(name: obj[:name], description: obj[:desc], web_url: obj[:link] || "", category_id: Category.first.id)
  x.remote_image_url = "http://g0v.tw"+obj[:img]
  puts obj.inspect
  x.save!
end
