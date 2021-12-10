# frozen_string_literal: true

League.create(
  [
    {
      id: 1,
      name: 'プレミアリーグ',
      logo: 'https://media.api-sports.io/football/leagues/39.png'
    },
    {
      id: 2,
      name: 'リーグ・アン',
      logo: 'https://media.api-sports.io/football/leagues/61.png'
    },
    {
      id: 3,
      name: 'ブンデスリーガ',
      logo: 'https://media.api-sports.io/football/leagues/78.png'
    },
    {
      id: 4,
      name: 'セリエA',
      logo: 'https://media.api-sports.io/football/leagues/135.png'
    },
    {
      id: 5,
      name: 'ラ・リーガ',
      logo: 'https://media.api-sports.io/football/leagues/140.png'
    }
  ]
)

Team.create(
  [
    {
      id: 1,
      name: 'マンチェスターU',
      logo: 'https://media.api-sports.io/football/teams/33.png',
      league_id: 1,
      api_team_id: 33
    },
    {
      id: 2,
      name: 'ニューカッスル',
      logo: 'https://media.api-sports.io/football/teams/34.png',
      league_id: 1,
      api_team_id: 34
    },
    {
      id: 3,
      name: 'ワトフォード',
      logo: 'https://media.api-sports.io/football/teams/38.png',
      league_id: 1,
      api_team_id: 38
    },
    {
      id: 4,
      name: 'ウルブス',
      logo: 'https://media.api-sports.io/football/teams/39.png',
      league_id: 1,
      api_team_id: 39
    },
    {
      id: 5,
      name: 'リヴァプール',
      logo: 'https://media.api-sports.io/football/teams/40.png',
      league_id: 1,
      api_team_id: 40
    },
    {
      id: 6,
      name: 'サウサンプトン',
      logo: 'https://media.api-sports.io/football/teams/41.png',
      league_id: 1,
      api_team_id: 41
    },
    {
      id: 7,
      name: 'アーセナル',
      logo: 'https://media.api-sports.io/football/teams/42.png',
      league_id: 1,
      api_team_id: 42
    },
    {
      id: 8,
      name: 'バーンリー',
      logo: 'https://media.api-sports.io/football/teams/44.png',
      league_id: 1,
      api_team_id: 44
    },
    {
      id: 9,
      name: 'エヴァートン',
      logo: 'https://media.api-sports.io/football/teams/45.png',
      league_id: 1,
      api_team_id: 45
    },
    {
      id: 10,
      name: 'レスターC',
      logo: 'https://media.api-sports.io/football/teams/46.png',
      league_id: 1,
      api_team_id: 46
    },
    {
      id: 11,
      name: 'トッテナム',
      logo: 'https://media.api-sports.io/football/teams/47.png',
      league_id: 1,
      api_team_id: 47
    },
    {
      id: 12,
      name: 'ウェストハム',
      logo: 'https://media.api-sports.io/football/teams/48.png',
      league_id: 1,
      api_team_id: 48
    },
    {
      id: 13,
      name: 'チェルシー',
      logo: 'https://media.api-sports.io/football/teams/49.png',
      league_id: 1,
      api_team_id: 49
    },
    {
      id: 14,
      name: 'マンチェスターC',
      logo: 'https://media.api-sports.io/football/teams/50.png',
      league_id: 1,
      api_team_id: 50
    },
    {
      id: 15,
      name: 'ブライトン',
      logo: 'https://media.api-sports.io/football/teams/51.png',
      league_id: 1,
      api_team_id: 51
    },
    {
      id: 16,
      name: 'クリスタルパレス',
      logo: 'https://media.api-sports.io/football/teams/52.png',
      league_id: 1,
      api_team_id: 52
    },
    {
      id: 17,
      name: 'ブレンフォード',
      logo: 'https://media.api-sports.io/football/teams/55.png',
      league_id: 1,
      api_team_id: 55
    },
    {
      id: 18,
      name: 'リーズU',
      logo: 'https://media.api-sports.io/football/teams/63.png',
      league_id: 1,
      api_team_id: 63
    },
    {
      id: 19,
      name: 'アストンヴィラ',
      logo: 'https://media.api-sports.io/football/teams/66.png',
      league_id: 1,
      api_team_id: 66
    },
    {
      id: 20,
      name: 'ノリッジ',
      logo: 'https://media.api-sports.io/football/teams/71.png',
      league_id: 1,
      api_team_id: 71
    },
    {
      id: 21,
      name: 'アンジェ',
      logo: 'https://media.api-sports.io/football/teams/77.png',
      league_id: 2,
      api_team_id: 77
    },
    {
      id: 22,
      name: 'ボルドー',
      logo: 'https://media.api-sports.io/football/teams/78.png',
      league_id: 2,
      api_team_id: 78
    },
    {
      id: 23,
      name: 'リール',
      logo: 'https://media.api-sports.io/football/teams/79.png',
      league_id: 2,
      api_team_id: 79
    },
    {
      id: 24,
      name: 'リヨン',
      logo: 'https://media.api-sports.io/football/teams/80.png',
      league_id: 2,
      api_team_id: 80
    },
    {
      id: 25,
      name: 'マルセイユ',
      logo: 'https://media.api-sports.io/football/teams/81.png',
      league_id: 2,
      api_team_id: 81
    },
    {
      id: 26,
      name: 'モンペリエ',
      logo: 'https://media.api-sports.io/football/teams/82.png',
      league_id: 2,
      api_team_id: 82
    },
    {
      id: 27,
      name: 'ナント',
      logo: 'https://media.api-sports.io/football/teams/83.png',
      league_id: 2,
      api_team_id: 83
    },
    {
      id: 28,
      name: 'ニース',
      logo: 'https://media.api-sports.io/football/teams/84.png',
      league_id: 2,
      api_team_id: 84
    },
    {
      id: 29,
      name: 'パリ・サンジェルマン',
      logo: 'https://media.api-sports.io/football/teams/85.png',
      league_id: 2,
      api_team_id: 85
    },
    {
      id: 30,
      name: 'モナコ',
      logo: 'https://media.api-sports.io/football/teams/91.png',
      league_id: 2,
      api_team_id: 91
    },
    {
      id: 31,
      name: 'スタッド・ランス',
      logo: 'https://media.api-sports.io/football/teams/93.png',
      league_id: 2,
      api_team_id: 93
    },
    {
      id: 32,
      name: 'レンヌ',
      logo: 'https://media.api-sports.io/football/teams/94.png',
      league_id: 2,
      api_team_id: 94
    },
    {
      id: 33,
      name: 'ストラスブール',
      logo: 'https://media.api-sports.io/football/teams/95.png',
      league_id: 2,
      api_team_id: 95
    },
    {
      id: 34,
      name: 'ロリアン',
      logo: 'https://media.api-sports.io/football/teams/97.png',
      league_id: 2,
      api_team_id: 97
    },
    {
      id: 35,
      name: 'クレルモン',
      logo: 'https://media.api-sports.io/football/teams/99.png',
      league_id: 2,
      api_team_id: 99
    },
    {
      id: 36,
      name: 'ブレスト',
      logo: 'https://media.api-sports.io/football/teams/106.png',
      league_id: 2,
      api_team_id: 106
    },
    {
      id: 37,
      name: 'トロワ',
      logo: 'https://media.api-sports.io/football/teams/110.png',
      league_id: 2,
      api_team_id: 110
    },
    {
      id: 38,
      name: 'メス',
      logo: 'https://media.api-sports.io/football/teams/112.png',
      league_id: 2,
      api_team_id: 112
    },
    {
      id: 39,
      name: 'RCランス',
      logo: 'https://media.api-sports.io/football/teams/116.png',
      league_id: 2,
      api_team_id: 116
    },
    {
      id: 40,
      name: 'サンテティエンヌ',
      logo: 'https://media.api-sports.io/football/teams/1063.png',
      league_id: 2,
      api_team_id: 1063
    },
    {
      id: 41,
      name: 'バイエルン',
      logo: 'https://media.api-sports.io/football/teams/157.png',
      league_id: 3,
      api_team_id: 157
    },
    {
      id: 42,
      name: 'ヘルタ',
      logo: 'https://media.api-sports.io/football/teams/159.png',
      league_id: 3,
      api_team_id: 159
    },
    {
      id: 43,
      name: 'フライブルク',
      logo: 'https://media.api-sports.io/football/teams/160.png',
      league_id: 3,
      api_team_id: 160
    },
    {
      id: 44,
      name: 'ヴォルフスブルク',
      logo: 'https://media.api-sports.io/football/teams/161.png',
      league_id: 3,
      api_team_id: 161
    },
    {
      id: 45,
      name: 'ボルシアMG',
      logo: 'https://media.api-sports.io/football/teams/163.png',
      league_id: 3,
      api_team_id: 163
    },
    {
      id: 46,
      name: 'マインツ',
      logo: 'https://media.api-sports.io/football/teams/164.png',
      league_id: 3,
      api_team_id: 164
    },
    {
      id: 47,
      name: 'ドルトムント',
      logo: 'https://media.api-sports.io/football/teams/165.png',
      league_id: 3,
      api_team_id: 165
    },
    {
      id: 48,
      name: 'ホッフェンハイム',
      logo: 'https://media.api-sports.io/football/teams/167.png',
      league_id: 3,
      api_team_id: 167
    },
    {
      id: 49,
      name: 'レバークーゼン',
      logo: 'https://media.api-sports.io/football/teams/168.png',
      league_id: 3,
      api_team_id: 168
    },
    {
      id: 50,
      name: 'フランクフルト',
      logo: 'https://media.api-sports.io/football/teams/169.png',
      league_id: 3,
      api_team_id: 169
    },
    {
      id: 51,
      name: 'アウクスブルク',
      logo: 'https://media.api-sports.io/football/teams/170.png',
      league_id: 3,
      api_team_id: 170
    },
    {
      id: 52,
      name: 'シュトゥットガルト',
      logo: 'https://media.api-sports.io/football/teams/172.png',
      league_id: 3,
      api_team_id: 172
    },
    {
      id: 53,
      name: 'RBライプツィヒ',
      logo: 'https://media.api-sports.io/football/teams/173.png',
      league_id: 3,
      api_team_id: 173
    },
    {
      id: 54,
      name: 'ボーフム',
      logo: 'https://media.api-sports.io/football/teams/176.png',
      league_id: 3,
      api_team_id: 176
    },
    {
      id: 55,
      name: 'グロイター・フュルト',
      logo: 'https://media.api-sports.io/football/teams/178.png',
      league_id: 3,
      api_team_id: 178
    },
    {
      id: 56,
      name: 'ウニオン・ベルリン',
      logo: 'https://media.api-sports.io/football/teams/182.png',
      league_id: 3,
      api_team_id: 182
    },
    {
      id: 57,
      name: 'アルミニア',
      logo: 'https://media.api-sports.io/football/teams/188.png',
      league_id: 3,
      api_team_id: 188
    },
    {
      id: 58,
      name: 'ケルン',
      logo: 'https://media.api-sports.io/football/teams/192.png',
      league_id: 3,
      api_team_id: 192
    },
    {
      id: 59,
      name: 'ラツィオ',
      logo: 'https://media.api-sports.io/football/teams/487.png',
      league_id: 4,
      api_team_id: 487
    },
    {
      id: 60,
      name: 'サッスオーロ',
      logo: 'https://media.api-sports.io/football/teams/488.png',
      league_id: 4,
      api_team_id: 488
    },
    {
      id: 61,
      name: 'ACミラン',
      logo: 'https://media.api-sports.io/football/teams/489.png',
      league_id: 4,
      api_team_id: 489
    },
    {
      id: 62,
      name: 'カリアリ',
      logo: 'https://media.api-sports.io/football/teams/490.png',
      league_id: 4,
      api_team_id: 490
    },
    {
      id: 63,
      name: 'ナポリ',
      logo: 'https://media.api-sports.io/football/teams/492.png',
      league_id: 4,
      api_team_id: 492
    },
    {
      id: 64,
      name: 'ウディネーゼ',
      logo: 'https://media.api-sports.io/football/teams/494.png',
      league_id: 4,
      api_team_id: 494
    },
    {
      id: 65,
      name: 'ジェノア',
      logo: 'https://media.api-sports.io/football/teams/495.png',
      league_id: 4,
      api_team_id: 495
    },
    {
      id: 66,
      name: 'ユベントス',
      logo: 'https://media.api-sports.io/football/teams/496.png',
      league_id: 4,
      api_team_id: 496
    },
    {
      id: 67,
      name: 'ASローマ',
      logo: 'https://media.api-sports.io/football/teams/497.png',
      league_id: 4,
      api_team_id: 497
    },
    {
      id: 68,
      name: 'サンプドリア',
      logo: 'https://media.api-sports.io/football/teams/498.png',
      league_id: 4,
      api_team_id: 498
    },
    {
      id: 69,
      name: 'アタランタ',
      logo: 'https://media.api-sports.io/football/teams/499.png',
      league_id: 4,
      api_team_id: 499
    },
    {
      id: 70,
      name: 'ボローニャ',
      logo: 'https://media.api-sports.io/football/teams/500.png',
      league_id: 4,
      api_team_id: 500
    },
    {
      id: 71,
      name: 'フィオレンティーナ',
      logo: 'https://media.api-sports.io/football/teams/502.png',
      league_id: 4,
      api_team_id: 502
    },
    {
      id: 72,
      name: 'トリノ',
      logo: 'https://media.api-sports.io/football/teams/503.png',
      league_id: 4,
      api_team_id: 503
    },
    {
      id: 73,
      name: 'ヴェローナ',
      logo: 'https://media.api-sports.io/football/teams/504.png',
      league_id: 4,
      api_team_id: 504
    },
    {
      id: 74,
      name: 'インテル',
      logo: 'https://media.api-sports.io/football/teams/505.png',
      league_id: 4,
      api_team_id: 505
    },
    {
      id: 75,
      name: 'エンポリ',
      logo: 'https://media.api-sports.io/football/teams/511.png',
      league_id: 4,
      api_team_id: 511
    },
    {
      id: 76,
      name: 'サレルニターナ',
      logo: 'https://media.api-sports.io/football/teams/514.png',
      league_id: 4,
      api_team_id: 514
    },
    {
      id: 77,
      name: 'スペツィア',
      logo: 'https://media.api-sports.io/football/teams/515.png',
      league_id: 4,
      api_team_id: 515
    },
    {
      id: 78,
      name: 'ヴェネツィア',
      logo: 'https://media.api-sports.io/football/teams/517.png',
      league_id: 4,
      api_team_id: 517
    },
    {
      id: 79,
      name: 'バルセロナ',
      logo: 'https://media.api-sports.io/football/teams/529.png',
      league_id: 5,
      api_team_id: 529
    },
    {
      id: 80,
      name: 'アトレティコ',
      logo: 'https://media.api-sports.io/football/teams/530.png',
      league_id: 5,
      api_team_id: 530
    },
    {
      id: 81,
      name: 'ビルバオ',
      logo: 'https://media.api-sports.io/football/teams/531.png',
      league_id: 5,
      api_team_id: 531
    },
    {
      id: 82,
      name: 'バレンシア',
      logo: 'https://media.api-sports.io/football/teams/532.png',
      league_id: 5,
      api_team_id: 532
    },
    {
      id: 83,
      name: 'ビジャレアル',
      logo: 'https://media.api-sports.io/football/teams/533.png',
      league_id: 5,
      api_team_id: 533
    },
    {
      id: 84,
      name: 'セビージャ',
      logo: 'https://media.api-sports.io/football/teams/536.png',
      league_id: 5,
      api_team_id: 536
    },
    {
      id: 85,
      name: 'セルタ',
      logo: 'https://media.api-sports.io/football/teams/538.png',
      league_id: 5,
      api_team_id: 538
    },
    {
      id: 86,
      name: 'レバンテ',
      logo: 'https://media.api-sports.io/football/teams/539.png',
      league_id: 5,
      api_team_id: 539
    },
    {
      id: 87,
      name: 'エスパニョール',
      logo: 'https://media.api-sports.io/football/teams/540.png',
      league_id: 5,
      api_team_id: 540
    },
    {
      id: 88,
      name: 'レアル・マドリード',
      logo: 'https://media.api-sports.io/football/teams/541.png',
      league_id: 5,
      api_team_id: 541
    },
    {
      id: 89,
      name: 'アラベス',
      logo: 'https://media.api-sports.io/football/teams/542.png',
      league_id: 5,
      api_team_id: 542
    },
    {
      id: 90,
      name: 'ベティス',
      logo: 'https://media.api-sports.io/football/teams/543.png',
      league_id: 5,
      api_team_id: 543
    },
    {
      id: 91,
      name: 'ヘタフェ',
      logo: 'https://media.api-sports.io/football/teams/546.png',
      league_id: 5,
      api_team_id: 546
    },
    {
      id: 92,
      name: 'ソシエダ',
      logo: 'https://media.api-sports.io/football/teams/548.png',
      league_id: 5,
      api_team_id: 548
    },
    {
      id: 93,
      name: 'グラナダ',
      logo: 'https://media.api-sports.io/football/teams/715.png',
      league_id: 5,
      api_team_id: 715
    },
    {
      id: 94,
      name: 'カディス',
      logo: 'https://media.api-sports.io/football/teams/724.png',
      league_id: 5,
      api_team_id: 724
    },
    {
      id: 95,
      name: 'オサスナ',
      logo: 'https://media.api-sports.io/football/teams/727.png',
      league_id: 5,
      api_team_id: 727
    },
    {
      id: 96,
      name: 'ラージョ',
      logo: 'https://media.api-sports.io/football/teams/728.png',
      league_id: 5,
      api_team_id: 728
    },
    {
      id: 97,
      name: 'エルチェ',
      logo: 'https://media.api-sports.io/football/teams/797.png',
      league_id: 5,
      api_team_id: 797
    },
    {
      id: 98,
      name: 'マヨルカ',
      logo: 'https://media.api-sports.io/football/teams/798.png',
      league_id: 5,
      api_team_id: 798
    }
  ]
)
