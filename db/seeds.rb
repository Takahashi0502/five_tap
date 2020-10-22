10.times do |i|
  User.create!(
    nickname: "test#{(i + 1)}",
    email: "test#{(i + 1)}@test.com", 
    password: "password#{(i +1)}",
    password_confirmation: "password#{(i +1)}"
  )
end

10.times do |i|
  Profile.create!(
    user_id: User.find(i + 1).id
  )
end

Beer.create!(
  [
    { name: "よなよなエール", category_id: 2, style_id: 9,
      text: "クラフトビールの王道の味わいを追求した、アメリカンペールエール。アロマホップ「カスケード」の柑橘類を思わせるフレッシュな香りと、やさしいモルトの甘みが特徴です。ビールが喉をとおったあとも、香りが心地よくとどまりつづけるよう醸造しました。",
      url: "https://yonasato.com/ec/product/yonayona_ale/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "インドの青鬼", category_id: 2, style_id: 10,
      text: "グレープフルーツのような華やかなホップの香りの陰に、思わず「二ガッ！」と叫んでしまうほどホップの強烈な苦味が隠れています。この苦さと深いコクが飲むものを虜にしてやまない、熱狂的ビールファンにこそおすすめしたい個性派ビールです。",
      url: "https://yonasato.com/ec/product/indono_aooni/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "水曜日のネコ", category_id: 2, style_id: 13,
      text: "グラスに注げば立ちのぼる、青りんごを思わせる香りとオレンジピールの爽やかな香り。ほのかなハーブ感がフルーティさを引き立て、すっきりとした飲み口がやさしく喉を潤してくれます。他のビールと比べて苦みが少ないので、普段ビールを飲まない方にもおすすめ。",
      url: "https://yonasato.com/ec/product/suiyoubino_neko/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "東京ブラック", category_id: 2, style_id: 16,
      text: "ロースト麦芽によって生まれる黒い色と、コーヒーやココアを思わせる香りが特徴の黒ビール。なめらかな口当たりと、ほのかに感じられる麦芽の甘みのおかげで、飲んだあとの印象がとても穏やかなのが特徴です。今日はお家でまったりしたいという方におすすめ。",
      url: "https://yonasato.com/ec/product/tokyo_black/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "僕ビール君ビール", category_id: 2, style_id: 17,
      text: "レモンやマスカット、ハーブを思わせる軽快な香りと、スッと抜ける爽やかな苦み。アルコール度数は4.5%に抑え、軽快な飲み口が特徴のビールです。こんなビールもあったのかと、イメージががらりと変わる、新しいクラフトビール体験をお楽しみください。",
      url: "https://yonasato.com/ec/product/bokukimi/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "軽井沢ビールクラフトザウルス ペールエール", category_id: 2, style_id: 9,
      text: "グレープフルーツを思わせる華やかなホップ香は、天地を突き抜けるような衝撃をあたえます。豊かなホップの香りと、さわやかな苦み、モルトの甘味がバランスよく、先進的な印象を持つ味わいになりました。軽井沢地区のほかに購入できるのは、よなよなの里だけ！",
      url: "https://yonasato.com/ec/product/craft_saurus_pale_ale/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "サンサンオーガニック", category_id: 2, style_id: 9,
      text: "有機栽培のモルトとホップを100%使用した、オーガニックビール。すっきりした飲み口の中にも、ドイツ産ホップの落ち着いた香りや麦芽の柔らかなコクといったビール本来の素材を感じることができます。健康志向の方におすすめしたい有機素材を使ったビールです。",
      url: "https://yonasato.com/ec/product/sunsun/", brewery_name: "ヤッホーブルーイング", brewery_country_id: 155
    },
    { name: "エチゴビール ピルスナー", category_id: 3, style_id: 2,
      text: "ピルスナーのオリジナルホップとされるチェコ・ザーツ産アロマホップを使用、麦芽100％、クラシックスタイルのラガーです。芳しいホップの香りと爽やかな苦味、豊かなモルトの旨味の調和をお楽しみ下さい。イラストは、ピルスナーの故郷であるチェコの作曲家、ドヴォルザークの交響曲を演奏するオーケストラをイメージしています。",
      url: "https://echigobeer.com/products.php", brewery_name: "エチゴビール", brewery_country_id: 155
    },
    { name: "ラーデベルガー ピルスナー", category_id: 3, style_id: 3,
      text: "味の特徴は、なんと言っても円熟した「苦味」。苦味の強さも、他のビールに比べて非常に高く、 どっしりとしたコクと、キレの良い苦味で余韻までしっかり堪能することができる。",
      url: "https://www.toko-t.co.jp/special/radeberger/#product", brewery_name: "ラーデベルガー醸造所", brewery_country_id: 139
    },
    { name: "キャプテンクロウ エクストラペールエール", category_id: 2, style_id: 9,
      text: "尋常じゃないホップアロマを体感！通常の倍以上のホップを使用し、鼻孔にダイレクトに伝わるホップアロマと、飲み心地を邪魔せず2杯目を誘うビターな味わいが特徴になります。",
      url: "http://tomi-kosya.com/ohlahobeer/", brewery_name: "オラホビール", brewery_country_id: 155
    },
    { name: "ビアへるん ペールエール", category_id: 2, style_id: 9,
      text: "イギリス発祥、アメリカ育ちのアンバー色のビール。厳選したフレッシュなアロマホップを使用。しっかりとした苦味とキレに、ホップの爽やかな薫りが旨い男性的なビール。",
      url: "http://www.shimane-beer.co.jp/beer.html", brewery_name: "松江地ビール ビアへるん", brewery_country_id: 155
    },
    { name: "シエラネバダ ペールエール", category_id: 2, style_id: 9,
      text: "全ての始まり。永遠の名作。全米No.1ペールエール。1980年より醸造されている全米No.1の伝説的なペールエールであり、ブリュワリーの看板商品。このビールの誕生（およびCascadeホップの使用）によりクラフトビール革命が起こった。",
      url: "https://www.antenna-america.com/item/SierraNevada/B041-001_b/", brewery_name: "シエラネバダ・ブリューイング", brewery_country_id: 109
    },
    { name: "南信州ビール アップルホップ", category_id: 2, style_id: 22,
      text: "南信州産のりんごを飾らずに絞った、発泡 酒です。美味しさと果実にこだわって、つ くりあげました。",
      url: "http://ms-beer.co.jp/beer/product/", brewery_name: "駒ヶ岳醸造所", brewery_country_id: 155
    },
    { name: "ヴァイツェン", category_id: 2, style_id: 15,
      text: "大麦・小麦モルトを使用。ヴァイツェン特有のにごりがあり、白みがかっているホワイトビールです。フルーティーなやさしい味わいと香りは女性にも人気です。ヴァイツェンとはドイツ語で「小麦」の意味。バイエルン地方で昔から飲まれている小麦のビール。",
      url: "http://inawashirojibeer.com/#list", brewery_name: "猪苗代ビール醸造所", brewery_country_id: 155
    },
    { name: "フレンスブルガー・ヴァイツェン", category_id: 2, style_id: 15,
      text: "ドイツの最北端で作られるヴァイツェンです。とりわけ果実味の凝縮感が強く、リンゴのような風味があります。甘味を抑え非常に洗練された味わいです。",
      url: "http://www.zato-trd.co.jp/products/beer/flensburger.html", brewery_name: "フレンスブルガー醸造所", brewery_country_id: 139
    },
    { name: "ハナレイ アイランド IPA", category_id: 2, style_id: 10,
      text: "パッションフルーツ・オレンジ・グアバ の３種のフルーツ（総称POG）を使ったトロピカルなＩＰＡスタイル。",
      url: "https://konabeer.jp/our-beer/", brewery_name: "コナブルーイング", brewery_country_id: 6
    },
    { name: "志賀高原IPA", category_id: 2, style_id: 10,
      text: "志賀高原ビールの代名詞です！強烈なホップの個性をしっかりとしたモルトのボディが受け止めます。",
      url: "http://tamamura-honten.co.jp/?pid=97647144", brewery_name: "玉村本店", brewery_country_id: 155
    },
    { name: "パンクIPA", category_id: 2, style_id: 10,
      text: "グラスに注ぐと透明感のあるクリアなゴールデンカラー。香りはしっかりとした上質な麦芽、トロピカルフルーツ、そして何よりも ブリュードッグらしいグレープフルーツ香 が、 大量のホップ とともに現れます。まさにホップの魔術師！",
      url: "https://whisk-e.co.jp/products/punkipa/", brewery_name: "ブリュードッグ", brewery_country_id: 20
    },
    { name: "ヒューガルデン・ホワイト", category_id: 2, style_id: 13,
      text: "小麦から生まれるフルーティな甘みに、オレンジピールのほろ苦さとコリアンダーシードのスパイシーさが加わった味わいは、ありきたりなビールのフレーバーではなく、ヒューガルデンが何百年も培ってきた特別なレシピ。その組み合わせによって、特徴的で華やか、かつ飲みやすい仕上がりになっています。",
      url: "https://hoegaarden.jp/", brewery_name: "ヒューガルデン醸造所", brewery_country_id: 203
    },
    { name: "スノーブロンシュ", category_id: 2, style_id: 13,
      text: "小麦を原料としたベルギータイプの上面発酵ビール。コリアンダーとオレンジピールの爽やかな酸味と香りが楽しめるホワイトビールです。",
      url: "http://www.konishi.co.jp/product/detail.php?did=116&c=30001", brewery_name: "KONISHIビール", brewery_country_id: 155
    },
    { name: "バラデン イザック", category_id: 2, style_id: 13,
      text: "華やかで香りの高い、女性に大人気の「イザック」",
      url: "https://mitsuifoods.co.jp/mfp/import/baladin/8032942290104.html", brewery_name: "ル・バラデン醸造所", brewery_country_id: 24
    },
    { name: "志賀高原ポーター", category_id: 2, style_id: 16,
      text: "イギリス産最高級モルト「マリスオッター」をベースに、エスプレッソのようなほのかなロースト香が特徴で、グリルした料理などとの相性も抜群です。",
      url: "http://tamamura-honten.co.jp/?pid=97647150", brewery_name: "玉村本店", brewery_country_id: 155
    },
    { name: "黒船ポーター", category_id: 2, style_id: 16,
      text: "黒船ポーターは、なめらかで力強いが、口の中にチョコレートやコーヒーのように魅力的なビタースウィートな味わいの余韻を残す。",
      url: "https://bairdbeer.com/ja/beer/kurofune-porter/", brewery_name: "ベアード・ブルーイング", brewery_country_id: 155
    },
    { name: "ドラフトギネス", category_id: 2, style_id: 11,
      text: "リッチでクリーミィ。独特なブラックカラー。ベルベットのような仕上がり。バランスがとれたアイコニックなビール。麦芽とローストした大麦がバランスよく合わさることで、一口飲むごとに甘みと苦みが複雑に絡み合います。",
      url: "https://www.guinness.com/ja-jp/", brewery_name: "ギネス", brewery_country_id: 3
    },
    { name: "エチゴビール スタウト", category_id: 2, style_id: 11,
      text: "焙煎麦芽の香ばしさとホップの爽やかさ、贅沢なモルトの甘味と苦味がバランスした、アイリッシュスタイルの本格スタウトです。",
      url: "https://echigobeer.com/products.php", brewery_name: "エチゴビール", brewery_country_id: 155
    },
    { name: "クラシック", category_id: 3, style_id: 5,
      text: "コクと苦味のバランスの良い本格ラガー。スタイルはドルトムンダーになります。ベアレンが創業時より造る、定番中の定番ビール。何杯でも飲める、飲み飽きしない味わいが自慢です。",
      url: "https://www.baerenbier.co.jp/ourbeer/", brewery_name: "ベアレン醸造所", brewery_country_id: 155
    },
    { name: "九州CRAFT日向夏", category_id: 3, style_id: 26,
      text: "ほどよい酸味と爽やかな香りが人気の宮崎特産日向夏を副原料に使用。ホップとの相性がとても良く軽快な味合いです。",
      url: "https://hideji-beer.jp/kyushu/", brewery_name: "宮崎ひでじビール", brewery_country_id: 155
    },
    { name: "伊勢角屋麦酒ペールエール", category_id: 2, style_id: 9,
      text: "フレッシュなグレープフルーツの果汁を思わせる柑橘系の香りが華やかに広がります。ほど良いコクと甘み、クリーンな口当たりが心地よいです。",
      url: "https://www.biyagura.jp/c/all-items/426", brewery_name: "伊勢角屋麦酒", brewery_country_id: 155
    },
    { name: "ホワイトエール", category_id: 2, style_id: 13,
      text: "コリアンダー、オレンジピール、ナツメグ等を加えた小麦ビール。爽やかな香りに、柔らかな味わいが特徴的。",
      url: "https://hitachino.cc/beer/index.html", brewery_name: "常陸野ネストビール", brewery_country_id: 155
    },
    { name: "箕面ビール スタウト", category_id: 2, style_id: 11,
      text: "コーヒーやビターチョコレートを思わせるフレーバー、滑らかなやわらかさとドライな後味にこだわった、飲み飽きないスタウト。",
      url: "http://www2.enekoshop.jp/shop/minoh-beer/", brewery_name: "箕面ビール", brewery_country_id: 155
    },
    { name: "COEDO 瑠璃 Ruri", category_id: 2, style_id: 3,
      text: "クリアな黄金色と白く柔らかな泡のコントラスト、さわやかな飲み口が特徴のプレミアムピルスナービール。軽やかな口当たりながらも、深みある味わいとホップの香味苦味のバランスをとった上質の大人の楽しみ。",
      url: "https://www.coedobrewery.com/jp/beers/", brewery_name: "コエドビール", brewery_country_id: 155
    }
  ]
)