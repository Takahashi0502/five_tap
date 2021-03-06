class BreweryCountry < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'アイスランド' },
    { id: 3, name: 'アイルランド' },
    { id: 4, name: 'アゼルバイジャン' },
    { id: 5, name: 'アフガニスタン' },
    { id: 6, name: 'アメリカ合衆国' },
    { id: 7, name: 'アメリカ領ヴァージン諸島' },
    { id: 8, name: 'アメリカ領サモア' },
    { id: 9, name: 'アラブ首長国連邦' },
    { id: 10, name: 'アルジェリア' },
    { id: 11, name: 'アルゼンチン' },
    { id: 12, name: 'アルバ' },
    { id: 13, name: 'アルバニア' },
    { id: 14, name: 'アルメニア' },
    { id: 15, name: 'アンギラ' },
    { id: 16, name: 'アンゴラ' },
    { id: 17, name: 'アンティグア・バーブーダ' },
    { id: 18, name: 'アンドラ' },
    { id: 19, name: 'イエメン' },
    { id: 20, name: 'イギリス' },
    { id: 21, name: 'イギリス領インド洋地域' },
    { id: 22, name: 'イギリス領ヴァージン諸島' },
    { id: 23, name: 'イスラエル' },
    { id: 24, name: 'イタリア' },
    { id: 25, name: 'イラク' },
    { id: 26, name: 'イラン・イスラム共和国' },
    { id: 27, name: 'インド' },
    { id: 28, name: 'インドネシア' },
    { id: 29, name: 'ウォリス・フツナ' },
    { id: 30, name: 'ウガンダ' },
    { id: 31, name: 'ウクライナ' },
    { id: 32, name: 'ウズベキスタン' },
    { id: 33, name: 'ウルグアイ' },
    { id: 34, name: 'エクアドル' },
    { id: 35, name: 'エジプト' },
    { id: 36, name: 'エストニア' },
    { id: 37, name: 'エスワティニ' },
    { id: 38, name: 'エチオピア' },
    { id: 39, name: 'エリトリア' },
    { id: 40, name: 'エルサルバドル' },
    { id: 41, name: 'オーストラリア' },
    { id: 42, name: 'オーストリア' },
    { id: 43, name: 'オーランド諸島' },
    { id: 44, name: 'オマーン' },
    { id: 45, name: 'オランダ' },
    { id: 46, name: 'ガーナ' },
    { id: 47, name: 'カーボベルデ' },
    { id: 48, name: 'ガーンジー' },
    { id: 49, name: 'ガイアナ' },
    { id: 50, name: 'カザフスタン' },
    { id: 51, name: 'カタール' },
    { id: 52, name: '合衆国領有小離島' },
    { id: 53, name: 'カナダ' },
    { id: 54, name: 'ガボン' },
    { id: 55, name: 'カメルーン' },
    { id: 56, name: 'ガンビア' },
    { id: 57, name: 'カンボジア' },
    { id: 58, name: '北マケドニア' },
    { id: 59, name: '北マリアナ諸島' },
    { id: 60, name: 'ギニア' },
    { id: 61, name: 'ギニアビサウ' },
    { id: 62, name: 'キプロス' },
    { id: 63, name: 'キューバ' },
    { id: 64, name: 'キュラソー' },
    { id: 65, name: 'ギリシャ' },
    { id: 66, name: 'キリバス' },
    { id: 67, name: 'キルギス' },
    { id: 68, name: 'グアテマラ' },
    { id: 69, name: 'グアドループ' },
    { id: 70, name: 'グアム' },
    { id: 71, name: 'クウェート' },
    { id: 72, name: 'クック諸島' },
    { id: 73, name: 'グリーンランド' },
    { id: 74, name: 'クリスマス島' },
    { id: 75, name: 'グレナダ' },
    { id: 76, name: 'クロアチア' },
    { id: 77, name: 'ケイマン諸島' },
    { id: 78, name: 'ケニア' },
    { id: 79, name: 'コートジボワール' },
    { id: 80, name: 'ココス（キーリング）諸島' },
    { id: 81, name: 'コスタリカ' },
    { id: 82, name: 'コモロ' },
    { id: 83, name: 'コロンビア' },
    { id: 84, name: 'コンゴ共和国' },
    { id: 85, name: 'コンゴ民主共和国' },
    { id: 86, name: 'サウジアラビア' },
    { id: 87, name: 'サウスジョージア・サウスサンドウィッチ諸島' },
    { id: 88, name: 'サモア' },
    { id: 89, name: 'サントメ・プリンシペ' },
    { id: 90, name: 'サン・バルテルミー' },
    { id: 91, name: 'ザンビア' },
    { id: 92, name: 'サンピエール島・ミクロン島' },
    { id: 93, name: 'サンマリノ' },
    { id: 94, name: 'サン・マルタン（フランス領）' },
    { id: 95, name: 'シエラレオネ' },
    { id: 96, name: 'ジブチ' },
    { id: 97, name: 'ジブラルタル' },
    { id: 98, name: 'ジャージー' },
    { id: 99, name: 'ジャマイカ' },
    { id: 100, name: 'ジョージア' },
    { id: 101, name: 'シリア・アラブ共和国' },
    { id: 102, name: 'シンガポール' },
    { id: 103, name: 'シント・マールテン（オランダ領）' },
    { id: 104, name: 'ジンバブエ' },
    { id: 105, name: 'スイス' },
    { id: 106, name: 'スウェーデン' },
    { id: 107, name: 'スーダン' },
    { id: 108, name: 'スヴァールバル諸島およびヤンマイエン島' },
    { id: 109, name: 'スペイン' },
    { id: 110, name: 'スリナム' },
    { id: 111, name: 'スリランカ' },
    { id: 112, name: 'スロバキア' },
    { id: 113, name: 'スロベニア' },
    { id: 114, name: 'セーシェル' },
    { id: 115, name: '赤道ギニア' },
    { id: 116, name: 'セネガル' },
    { id: 117, name: 'セルビア' },
    { id: 118, name: 'セントクリストファー・ネイビス' },
    { id: 119, name: 'セントビンセントおよびグレナディーン諸島' },
    { id: 120, name: 'セントヘレナ・アセンションおよびトリスタンダクーニャ' },
    { id: 121, name: 'セントルシア' },
    { id: 122, name: 'ソマリア' },
    { id: 123, name: 'ソロモン諸島' },
    { id: 124, name: 'タークス・カイコス諸島' },
    { id: 125, name: 'タイ' },
    { id: 126, name: '大韓民国' },
    { id: 127, name: '中国台湾省（中華民国）' },
    { id: 128, name: 'タジキスタン' },
    { id: 129, name: 'タンザニア' },
    { id: 130, name: 'チェコ' },
    { id: 131, name: 'チャド' },
    { id: 132, name: '中央アフリカ共和国' },
    { id: 133, name: '中華人民共和国' },
    { id: 134, name: 'チュニジア' },
    { id: 135, name: '朝鮮民主主義人民共和国' },
    { id: 136, name: 'チリ' },
    { id: 137, name: 'ツバル' },
    { id: 138, name: 'デンマーク' },
    { id: 139, name: 'ドイツ' },
    { id: 140, name: 'トーゴ' },
    { id: 141, name: 'トケラウ' },
    { id: 142, name: 'ドミニカ共和国' },
    { id: 143, name: 'ドミニカ国' },
    { id: 144, name: 'トリニダード・トバゴ' },
    { id: 145, name: 'トルクメニスタン' },
    { id: 146, name: 'トルコ' },
    { id: 147, name: 'トンガ' },
    { id: 148, name: 'ナイジェリア' },
    { id: 149, name: 'ナウル' },
    { id: 150, name: 'ナミビア' },
    { id: 151, name: '南極' },
    { id: 152, name: 'ニウエ' },
    { id: 153, name: 'ニカラグア' },
    { id: 154, name: 'ニジェール' },
    { id: 155, name: '日本' },
    { id: 156, name: '西サハラ' },
    { id: 157, name: 'ニューカレドニア' },
    { id: 158, name: 'ニュージーランド' },
    { id: 159, name: 'ネパール' },
    { id: 160, name: 'ノーフォーク島' },
    { id: 161, name: 'ノルウェー' },
    { id: 162, name: 'ハード島とマクドナルド諸島' },
    { id: 163, name: 'バーレーン' },
    { id: 164, name: 'ハイチ' },
    { id: 165, name: 'パキスタン' },
    { id: 166, name: 'バチカン市国' },
    { id: 167, name: 'パナマ' },
    { id: 168, name: 'バヌアツ' },
    { id: 169, name: 'バハマ' },
    { id: 170, name: 'パプアニューギニア' },
    { id: 171, name: 'バミューダ' },
    { id: 172, name: 'パラオ' },
    { id: 173, name: 'パラグアイ' },
    { id: 174, name: 'バルバドス' },
    { id: 175, name: 'パレスチナ' },
    { id: 176, name: 'ハンガリー' },
    { id: 177, name: 'バングラデシュ' },
    { id: 178, name: '東ティモール' },
    { id: 179, name: 'ピトケアン' },
    { id: 180, name: 'フィジー' },
    { id: 181, name: 'フィリピン' },
    { id: 182, name: 'フィンランド' },
    { id: 183, name: 'ブータン' },
    { id: 184, name: 'ブーベ島' },
    { id: 185, name: 'プエルトリコ' },
    { id: 186, name: 'フェロー諸島' },
    { id: 187, name: 'フォークランド（マルビナス）諸島' },
    { id: 188, name: 'ブラジル' },
    { id: 189, name: 'フランス' },
    { id: 190, name: 'フランス領ギアナ' },
    { id: 191, name: 'フランス領ポリネシア' },
    { id: 192, name: 'フランス領南方・南極地域' },
    { id: 193, name: 'ブルガリア' },
    { id: 194, name: 'ブルキナファソ' },
    { id: 195, name: 'ブルネイ・ダルサラーム' },
    { id: 196, name: 'ブルンジ' },
    { id: 197, name: 'ベトナム' },
    { id: 198, name: 'ベナン' },
    { id: 199, name: 'ベネズエラ・ボリバル共和国' },
    { id: 200, name: 'ベラルーシ' },
    { id: 201, name: 'ベリーズ' },
    { id: 202, name: 'ペルー' },
    { id: 203, name: 'ベルギー' },
    { id: 204, name: 'ポーランド' },
    { id: 205, name: 'ボスニア・ヘルツェゴビナ' },
    { id: 206, name: 'ボツワナ' },
    { id: 207, name: 'ボネール、シント・ユースタティウスおよびサバ' },
    { id: 208, name: 'ボリビア多民族国' },
    { id: 209, name: 'ポルトガル' },
    { id: 210, name: '香港' },
    { id: 211, name: 'ホンジュラス' },
    { id: 212, name: 'マーシャル諸島' },
    { id: 213, name: 'マカオ' },
    { id: 214, name: 'マダガスカル' },
    { id: 215, name: 'マヨット' },
    { id: 216, name: 'マラウイ' },
    { id: 217, name: 'マリ' },
    { id: 218, name: 'マルタ' },
    { id: 219, name: 'マルティニーク' },
    { id: 220, name: 'マレーシア' },
    { id: 221, name: 'マン島' },
    { id: 222, name: 'ミクロネシア連邦' },
    { id: 223, name: '南アフリカ' },
    { id: 224, name: '南スーダン' },
    { id: 225, name: 'ミャンマー' },
    { id: 226, name: 'メキシコ' },
    { id: 227, name: 'モーリシャス' },
    { id: 228, name: 'モーリタニア' },
    { id: 229, name: 'モザンビーク' },
    { id: 230, name: 'モナコ' },
    { id: 231, name: 'モルディブ' },
    { id: 232, name: 'モルドバ共和国' },
    { id: 233, name: 'モロッコ' },
    { id: 234, name: 'モンゴル' },
    { id: 235, name: 'モンテネグロ' },
    { id: 236, name: 'モントセラト' },
    { id: 237, name: 'ヨルダン' },
    { id: 238, name: 'ラオス人民民主共和国' },
    { id: 239, name: 'ラトビア' },
    { id: 240, name: 'リトアニア' },
    { id: 241, name: 'リビア' },
    { id: 242, name: 'リヒテンシュタイン' },
    { id: 243, name: 'リベリア' },
    { id: 244, name: 'ルーマニア' },
    { id: 245, name: 'ルクセンブルク' },
    { id: 246, name: 'ルワンダ' },
    { id: 247, name: 'レソト' },
    { id: 248, name: 'レバノン' },
    { id: 249, name: 'レユニオン' },
    { id: 250, name: 'ロシア連邦' }
  ]
end
