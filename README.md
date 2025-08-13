# ISHI会版OpenMPW PTC06-2について
これは、[ISHI会版OpenMPW PTC06-2](https://ishi-kai.org/openmpw/shuttle/ptc06/2025/05/24/shuttle_ISHI-Kai_OpenMPW-PTC06-2_start.html)にみんなで相乗りしたxschemによる回路図とklayoutによるレイアアウト置き場です。


## みんなの[相乗りチップ](Submitted/all_members_layout.gds)
- ![all_members_layout](Submitted/all_members_layout.png)
- ![all_members_layout_using](Submitted/all_members_layout_using.png)

### 相乗りチップのラベル
- 緑枠  
-- 独自設計の回路  
- オレンジ枠  
-- 初めてのInverter回路  
- 紫枠  
-- ピン不足によりレイアアウト配置のみ  


# 参加者リスト
## [個人参加者]()
- [aidera](./member_project/aidera/)
- [arstopia](./member_project/arstopia/)
- [konikoni428](./member_project/konikoni428/)
- [reodon](./member_project/reodon/)
- [YutakaKOTANI](./member_project/YutakaKOTANI/)

## [グループワーク参加者]()
[ISHI会版OpenMPW PTC06-2のOPAMPのグループワーク](https://ishi-kai.org/openmpw/shuttle/ptc06/2025/06/14/shuttle_ISHI-Kai_OpenMPW-PTC06-2_OPAMP_Team.html)参加者です。  
### [Team Ando](./member_project/GroupWork/Team_Ando/)
- [dokunira](./member_project/GroupWork/Team_Ando/dokunira/)
- [forests](./member_project/GroupWork/Team_Ando/forests/)
- [XianDIY](./member_project/GroupWork/Team_Ando/ugeugeHigh/)
- [Maehashi](./member_project/GroupWork/Team_Ando/YuMaehashi/)
### [Team Masahiro]() 
- [Masahiro](./member_project/GroupWork/Team_masahiro/)
### [Team ICHIKEN]
- [ICHIKEN](./member_project/GroupWork/Team_ichiken/)

## [スポンサー参加者]()
### [サンケン電気]()
- [iijima](./member_project/sanken/iijima/)
- [liuyi](./member_project/sanken/liuyi/)
- [shishido](./member_project/sanken/shishido/)
- [yamazaki](./member_project/sanken/yamazaki/)
- [yasuike](./member_project/sanken/yasuike/)
- [yukiyama](./member_project/sanken/yukiyama/)



## 各種リスト
- [メンバーリスト](docs/member_list.pdf)
- [ピンリスト](docs/pin_list.pdf)


# 個人参加者のデザイン
個人参加のみなさまの回路図とレイアウトです。  
今回はインバータ回路のみとなります。  

## [aidera](./member_project/aidera/)：Inverter回路
### 感想
大学で電気工学を専攻して以来、こういった設計は久しぶりで  
初めてのチップ設計で難しかったですが  
チップ設計の雰囲気がわかり面白かったです。  
このような実際に設計から実際に製造していただけるような  
企画は他になく、貴重な機会をいただきありがとうございました。  

- ![回路図](./member_project/aidera/images/inv_sch.png)
- ![レイアウト](./member_project/aidera/images/inv_gds.png)


## [arstopia](./member_project/arstopia/)：Inverter回路
### 感想
その昔、とあるアーキテクチャの研究室で半導体設計は一瞬かすったのですが、今回、半導体のチップ製造までしていただけるとのことでまた勉強してみようと思い、参加させていただきました。
回路図を書いてシミュレーションするだけでなくレイアウトまで行うことで、物理レイヤへの理解がより深まりました。今後もさらに勉強したいと思います。
大変有意義なイベントを開催してくださりありがとうございました。

- ![回路図](./member_project/arstopia/images/inv_sch.png)
- ![レイアウト](./member_project/arstopia/images/inv_gds.png)


## [konikoni428](./member_project/konikoni428/)：Inverter回路
### 感想
ツールは使いにくいKiCadみたいな感じでしたが、オープンなツールでも半導体が設計できることがわかって面白かったです。
実際に動くものになるまでやるので、現物が出来上がるのが楽しみ。

- ![回路図](./member_project/konikoni428/images/inv_sch.png)
- ![レイアウト](./member_project/konikoni428/images/inv_gds.png)


## [reodon](./member_project/reodon/)：Inverter回路
### 感想
初めてICの設計をしたが、面白かった。
レイアウト作成の際に、全体を反時計回りに90度回転させてみたが、見本とMOSFETのピン配置が変わってしまったため、混乱した。
KiCadを触ったことがあったので何とかなったが、そうでなければ時間内に終わっていなかったかもしれない。
完成して実際に回路が手元に届くのが楽しみだ。

ハンズオンを開催していただき、ありがとうございました！


- ![回路図](./member_project/reodon/images/inv_sch.png)
- ![レイアウト](./member_project/reodon/images/inv_gds.png)


## [YutakaKOTANI](./member_project/YutakaKOTANI/)：Inverter回路
### 感想
はじめて、半導体を設計したので、わからないことも多かったですが、無事LVS/DRCの通ったレイアウトが作成できました。

Files:  
├── inv_yutaka.gds		-- layout file	LVS/DRC OK  
├── inv_yutaka.sch		-- schematics for LVS  
├── tb_inv_yutaka_03_trans.sch	-- schematics for transient simulation  
└── tb_inv_yutaka.sch		-- schematics for DC simulation  

- ![回路図](./member_project/YutakaKOTANI/images/inv_sch.png)
- ![レイアウト](./member_project/YutakaKOTANI/images/inv_gds.png)




# グループワーク参加者
[ISHI会版OpenMPW PTC06-2のOPAMPのグループワーク](https://ishi-kai.org/openmpw/shuttle/ptc06/2025/06/14/shuttle_ISHI-Kai_OpenMPW-PTC06-2_OPAMP_Team.html)での成果物です。  

## [Team Ando](./member_project/GroupWork/Team_Ando/)
2025年6月29日から2025年8月10日まで毎週日曜日の21時からミーティングを行い、互いの進捗の確認や疑問点の解消を行いました。  
[Discord上の活動場所へのリンク](https://discord.com/channels/1087260891264856144/1383814373784551565)

### [dokunira](./member_project/GroupWork/Team_Ando/dokunira/)：OPAMP回路
毎週ミーティングを開き、メンバーの助言をもらいながら、初めてのオペアンプ設計に挑戦しました。トランジスタのW/L比や抵抗値といった回路素子一つ一つのパラメータが、回路全体の性能に複雑に影響し合い、調整は想像以上に難しかったです。大変貴重な経験をさせていただきました。ありがとうございました。  

![alt text](./member_project/GroupWork/Team_Ando/dokunira/images/schematic.jpeg)
![layout](./member_project/GroupWork/Team_Ando/dokunira/images/layout.jpeg)


### [foorests](./member_project/GroupWork/Team_Ando/foorests/)：OPAMP回路
アナログ回路で代表的なオペアンプについて、学びながら回路図・レイアウトを書くという貴重な経験をさせていただきました。  
今回はグループワークということで毎週集まりながらオペアンプを作っていたのですが、そこで様々な助言をいただいてなんとか完走することができました。また土屋先生のOPAMP設計講座も参考になりました。
非常に充実して楽しい時間でした。皆様本当にありがとうございました！  

![alt text](./member_project/GroupWork/Team_Ando/foorests/circuit.PNG)
![layout](./member_project/GroupWork/Team_Ando/foorests/layout.PNG)


### [XianDIY](./member_project/GroupWork/Team_Ando/ugeugeHigh/)：OPAMP回路
前回Inverterを作ってみようの会に参加し、次のステップとしてOPAMPのグループワークに参加させていただきました。  
(https://github.com/ugeugeHigh/ISHI_xian_first)
KiCad等で回路設計して基板を作るところまではよくやりますが、ICチップの中身を作れるというのはワクワクしますよね！  
このような機会を頂きありがとうございます！  

大学・大学院ではグラフェンデバイスを作ったり、液体ヘリウム温度下でデバイス物性の評価などをしていていましたが、  
思い返すとOPAMPについてしっかり勉強したことが無くて、中々理解するのがハードでした。まだ理解が追いついていない部分が結構あります。  

またレイアウトを作る部分はかなり苦戦しました。チームの皆様に助けて頂きながら、なんとかgdsファイルをつくることができました。ありがとうございました！  

定電流源回路部分は[Maehashi](./member_project/GroupWork/Team_Ando/YuMaehashi/)さんの回路を使わせて頂きました。ありがとうございます。  

![alt text](./member_project/GroupWork/Team_Ando/ugeugeHigh/img/opamp_cs_full_sch.png)
![layout](./member_project/GroupWork/Team_Ando/ugeugeHigh/img/opamp_full.gds.png)


### [Maehashi](./member_project/GroupWork/Team_Ando/YuMaehashi/)：CS回路
ISHI会に入って初のイベント。主な対象は初学者のようだったが、アンプ設計からは遠のいていたので復習を兼ねて参加。  
毎週のミーティングでは主に他メンバーのサポートをしていたが、理解があやふやだったり忘れてしまった内容が多い事に気づき、良い勉強になった。  
また、オープンソースPDK/EDAに触れるのが初めてだったこともあり、主にアプリの使い方を調べるために多くの時間を費やしてしまったため、なかなか設計に使う時間が取れず自分自身での設計は定電流源回路のみとなってしまった。次に同様のイベントに参加する際には最後までやり遂げたい。  
大変貴重な経験をさせていただき、ありがとうございました。  

![alt text](./member_project/GroupWork/Team_Ando/YuMaehashi/images/schematic.png)
![layout](./member_project/GroupWork/Team_Ando/YuMaehashi/images/layout.png)


## [Team Masahiro](./member_project/GroupWork/Team_masahiro/) 
Masahiroチーム（チーム組まなかったので個人になります。)の設計データです。  

### [Masahiro](./member_project/GroupWork/Team_masahiro/)：OPAMP回路
高周波オペアンプ(GBW=100MHz以上)を目指したオペアンプを設計しました。とはいってもそこまで大したことはしていなくて、バイアスを調整するのと、2段目をカスコードソース接地回路にしてみました。基準電流源は設計が間に合わず外部からバイアス電流をいれる構成にしました。10pF負荷で30MHzとなり、ちょっと目標には届きませんでした。  
できるかと思ってもよくわからないところが多く数値を変えてたくさん試すという数撃ちゃ当たる作戦になってしまいました。もう少し計算でいい感じのところを探せるようになれるといいなと思います。つぎはもっといい感じの回路を考えるところからやってみたいです。  

- ![回路図](./member_project/GroupWork/Team_masahiro/figure/opamp.png)
- ![レイアウト](./member_project/GroupWork/Team_masahiro/figure/layout2.png)
- ![周波数特性](./member_project/GroupWork/Team_masahiro/figure/freq10pf.png)


## [Team ICHIKEN](./member_project/GroupWork/Team_ichiken/)
### [ICHIKEN](./member_project/GroupWork/Team_ichiken/)：OPAMP回路
こちらの「[電気系ものづくりYouTuberのイチケンさんがオープンソース半導体でOPAMP設計に関するセミナーをTECHNO-FRONTIER 2025で実施します](https://ishi-kai.org/seminar/2025/07/20/Seminar_TECHNOFRONTIER2025_seminar_ichiken.html)」で案内した[イチケンさん](https://www.youtube.com/@ICHIKEN1)が設計・レイアウトしたOPAMPとなります。  

- ![回路図](./member_project/GroupWork/Team_ichiken/images/opamp_sch.png)
- ![レイアウト](./member_project/GroupWork/Team_ichiken/images/opamp_gds.png)


# スポンサー参加者
## [サンケン電気](./member_project/sanken/)
### [iijima](./member_project/sanken/iijima/)：Analog2Timer回路
- ![回路図](./member_project/sanken/images/iijima_A2T_cir.png)
- ![レイアウト](./member_project/sanken/images/iijima_A2T_gds.png)

### [iijima](./member_project/sanken/iijima/)：インバータ回路
- ![回路図](./member_project/sanken/images/iijima_inv_cir.png)
- ![レイアウト](./member_project/sanken/images/iijima_inv_gds.png)

### [liuyi](./member_project/sanken/liuyi/)：インバータ回路
- ![回路図](./member_project/sanken/images/liuyi_inv_cir.png)
- ![レイアウト](./member_project/sanken/images/liuyi_inv_gds.png)

### [shishido](./member_project/sanken/shishido/)：D-FF回路
- ![回路図](./member_project/sanken/images/shishido_DFF_cir.png)
- ![レイアウト](./member_project/sanken/images/shishido_DFF_gds.png)

### [shishido](./member_project/sanken/shishido/)：NAND回路
- ![回路図](./member_project/sanken/images/shishido_NAND_cir.png)
- ![レイアウト](./member_project/sanken/images/shishido_NAND_gds.png)

### [yamazaki](./member_project/sanken/yamazaki/)：OPAMP回路
- ![回路図](./member_project/sanken/images/yamazaki_OPAMP_cir.png)
- ![レイアウト](./member_project/sanken/images/yamazaki_OPAMP_gds.png)

### [yamazaki](./member_project/sanken/yamazaki/)：ALU回路
- ![回路図](./member_project/sanken/images/yamazaki_ALU_cir.png)
- ![レイアウト](./member_project/sanken/images/yamazaki_ALU_gds.png)

### [yamazaki](./member_project/sanken/yamazaki/)：インバータ回路
- ![回路図](./member_project/sanken/images/yamazaki_inv_cir.png)
- ![レイアウト](./member_project/sanken/images/yamazaki_inv_gds.png)

### [yasuike](./member_project/sanken/yasuike/)：インバータ回路
- ![回路図](./member_project/sanken/images/yasuike_inv_cir.png)
- ![レイアウト](./member_project/sanken/images/yasuike_inv_gds.png)

### [yukiyama](./member_project/sanken/yukiyama/)：インバータ回路
- ![回路図](./member_project/sanken/images/yukiyama_inv_cir.png)
- ![レイアウト](./member_project/sanken/images/yukiyama_inv_gds.png)



# 測定会
## 製造されたチップ
製造され、届いたチップたちです。
- ![アルミ袋入り](images/chip_1.jpg)
- ![中身](images/chip_2.jpg)
- ![ベアダイ](images/baredie.jpg)
- ![ベアダイを見る顕微鏡セット](images/microscope_baredie.jpg)


## 簡易測定
動作するか？簡易的に測定します。

### ソケット利用
測定にはチップ交換が簡単なようにソケットを利用します。

- ![測定用ソケット](images/socket_1.jpg)
- ![ソケットに入れた状態](images/socket_2.jpg)


### インバーター回路の測定
Analog Discovery3を利用して、0-5Vで変化するサイン波を入力し、その出力をオシロスコープモードで測定します。  
結果は、正常にインバーター動作しているようです。  

- ![AD3に接続](images/AD3_connect.jpg)
- ![入力のサイン波](images/AD3_sine_wave.png)
- ![出力結果](images/AD3_inverer_out.png)


## お持ち帰りパッケージ
チップを壊さずに持ち帰れるように静電気防止ウレタンと静電気防止袋を用意して持って帰ってもらいます。

- ![静電気防止ウレタン](images/bringing_1.jpg)
- ![静電気防止袋](images/bringing_2.jpg)


### インバーター回路
インバーター回路のできに満足する参加者様。

- ![インバーター](images/measure_inverter_01.jpg)
