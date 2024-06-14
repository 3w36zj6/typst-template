#import "../../templates/article.typ": article
#show: article.with(
  title: "タイトル",
  subtitle: "サブタイトル",
  author: "著者",
  date: "1234/56/78",
  paginate: true,
  bib: bibliography("references.bib", title: "参考文献", style: "ieee"),
)

= Writing in Typst

このレポートでは、氷河の_流体力学_に影響を与えるさまざまな要素と、これらが自然構造物の形成と振る舞いにどのように寄与するかを探求します。

+ 気候
  - 温度
  - 降水量
+ 地形
+ 地質学

== Adding a figure

=== Image

@glaciers で示されるような氷河は、私たちがすぐに対策を講じないと、近い将来には存在しなくなる可能性があります。

#figure(image("glacier.png", width: 70%), caption: "氷河の様子")<glaciers>

=== Table

@critical-temperatures に示されるように、さまざまな物質は異なる臨界温度を持ちます。

#figure(table(
  columns: 3,
  table.header([Substance], [Subcritical °C], [Supercritical °C]),
  [Hydrochloric Acid],
  [12.0],
  [92.1],
  [Sodium Myreth Sulfate],
  [16.6],
  [104],
  [Potassium Hydroxide],
  table.cell(colspan: 2)[24.7],
), caption: "さまざまな物質の臨界温度") <critical-temperatures>

=== Code

@fibonacci-code は、Fibonacci数列の最初の8項を計算するためのコードを示しています。

#figure(
  [
  ```typst
    #set page(width: 10cm, height: auto)
    #set heading(numbering: "1.")

    = Fibonacci sequence
    The Fibonacci sequence is defined through the recurrence relation $F_n = F_(n-1) + F_(n-2)$.
    It can also be expressed in _closed form:_

    $ F_n = round(1 / sqrt(5) phi.alt^n), quad
    phi.alt = (1 + sqrt(5)) / 2 $

    #let count = 8
    #let nums = range(1, count + 1)
    #let fib(n) = (if n <= 2 { 1 } else { fib(n - 1) + fib(n - 2) })

    The first #count numbers of the sequence are:

    #align(
      center,
      table(columns: count, ..nums.map(n => $F_#n$), ..nums.map(n => str(fib(n)))),
    )

    ```
  ],
  caption: "Fibonacci数列を計算するコード",
) <fibonacci-code>

== Adding a bibliography

氷河の融解は、@glacier-melt に示されたモデルに従っています。

== Adding a formula

方程式 $Q = rho A v + C$ は氷河の流速を定義します。

氷河の流れによって移動した土壌の総量は @total-displaced-soil のように計算されます。

$ 7.32 beta +
sum_(i=0)^nabla
(Q_i (a_i - epsilon)) / 2 $ <total-displaced-soil>

== Adding a footnote

詳細はドキュメンテーションをご覧ください。
#footnote[https://typst.app/docs]

#pagebreak()

= 吾輩は猫である

吾輩は猫である。名前はまだ無い。どこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。この書生というのは時々我々を捕えて煮て食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。ただ彼の掌に載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。この時妙なものだと思った感じが今でも残っている。第一毛をもって装飾されべきはずの顔がつるつるしてまるで薬缶だ。その後猫にもだいぶ逢ったがこんな片輪には一度も出会わした事がない。のみならず顔の真中があまりに突起している。そうしてその穴の中から時々ぷうぷうと煙を吹く。どうも咽せぽくて実に弱った。これが人間の飲む煙草というものである事はようやくこの頃知った。この書生の掌の裏でしばらくはよい心持に坐っておったが、しばらくすると非常な速力で運転し始めた。書生が動くのか自分だけが動くのか分らないが無暗に眼が廻る。胸が悪くなる。到底助からないと思っていると、どさりと音がして眼から火が出た。それまでは記憶しているがあとは何の事やらいくら考え出そうとしても分らない。ふと気が付いて見ると書生はいない。たくさんおった兄弟が一疋も見えぬ。肝心の母親さえ姿を隠してしまった。その上今までの所とは違って無暗に明るい。眼を明いていられぬくらいだ。はてな何でも容子がおかしいと、のそのそ這い出して見ると非常に痛い。吾輩は藁の上から急に笹原の中へ棄てられたのである。ようやくの思いで笹原を這い出すと向うに大きな池がある。吾輩は池の前に坐ってどうしたらよかろうと考えて見た。別にこれという分別も出ない。しばらくして泣いたら書生がまた迎に来てくれるかと考え付いた。ニャー、ニャーと試みにやって見たが誰も来ない。そのうち池の上をさらさらと風が渡って日が暮れかかる。腹が非常に減って来た。泣きたくても声が出ない。仕方がない、何でもよいから食物のある所まであるこうと決心をしてそろりそろりと池を左りに廻り始めた。どうも非常に苦しい。そこを我慢して無理やりに這って行くとようやくの事で何となく人間臭い所へ出た。ここへ這入ったら、どうにかなると思って竹垣の崩れた穴から、とある邸内にもぐり込んだ。縁は不思議なもので、もしこの竹垣が破れていなかったなら、吾輩はついに路傍に餓死したかも知れんのである。一樹の蔭とはよく云ったものだ。この垣根の穴は今日に至るまで吾輩が隣家の三毛を訪問する時の通路になっている。さて邸へは忍び込んだもののこれから先どうして善いか分らない。そのうちに暗くなる、腹は減る、寒さは寒し、雨が降って来るという始末でもう一刻の猶予が出来なくなった。仕方がないからとにかく明るくて暖かそうな方へ方へとあるいて行く。今から考えるとその時はすでに家の内に這入っておったのだ。ここで吾輩は彼の書生以外の人間を再び見るべき機会に遭遇したのである。第一に逢ったのがおさんである。これは前の書生より一層乱暴な方で吾輩を見るや否やいきなり頸筋をつかんで表へ抛り出した。いやこれは駄目だと思ったから眼をねぶって運を天に任せていた。しかしひもじいのと寒いのにはどうしても我慢が出来ん。吾輩は再びおさんの隙を見て台所へ這い上った。すると間もなくまた投げ出された。吾輩は投げ出されては這い上り、這い上っては投げ出され、何でも同じ事を四五遍繰り返したのを記憶している。その時におさんと云う者はつくづくいやになった。この間おさんの三馬を偸んでこの返報をしてやってから、やっと胸の痞が下りた。吾輩が最後につまみ出されようとしたときに、この家の主人が騒々しい何だといいながら出て来た。下女は吾輩をぶら下げて主人の方へ向けてこの宿なしの小猫がいくら出しても出しても御台所へ上って来て困りますという。主人は鼻の下の黒い毛を撚りながら吾輩の顔をしばらく眺めておったが、やがてそんなら内へ置いてやれといったまま奥へ這入ってしまった。主人はあまり口を聞かぬ人と見えた。下女は口惜しそうに吾輩を台所へ抛り出した。かくして吾輩はついにこの家を自分の住家と極める事にしたのである。吾輩の主人は滅多に吾輩と顔を合せる事がない。職業は教師だそうだ。学校から帰ると終日書斎に這入ったぎりほとんど出て来る事がない。家のものは大変な勉強家だと思っている。当人も勉強家であるかのごとく見せている。しかし実際はうちのものがいうような勤勉家ではない。吾輩は時々忍び足に彼の書斎を覗いて見るが、彼はよく昼寝をしている事がある。時々読みかけてある本の上に涎をたらしている。彼は胃弱で皮膚の色が淡黄色を帯びて弾力のない不活溌な徴候をあらわしている。その癖に大飯を食う。大飯を食った後でタカジヤスターゼを飲む。飲んだ後で書物をひろげる。二三ページ読むと眠くなる。涎を本の上へ垂らす。これが彼の毎夜繰り返す日課である。吾輩は猫ながら時々考える事がある。教師というものは実に楽なものだ。人間と生れたら教師となるに限る。こんなに寝ていて勤まるものなら猫にでも出来ぬ事はないと。それでも主人に云わせると教師ほどつらいものはないそうで彼は友達が来る度に何とかかんとか不平を鳴らしている。吾輩がこの家へ住み込んだ当時は、主人以外のものにははなはだ不人望であった。どこへ行っても跳ね付けられて相手にしてくれ手がなかった。いかに珍重されなかったかは、今日に至るまで名前さえつけてくれないのでも分る。吾輩は仕方がないから、出来得る限り吾輩を入れてくれた主人の傍にいる事をつとめた。朝主人が新聞を読むときは必ず彼の膝の上に乗る。彼が昼寝をするときは必ずその背中に乗る。これはあながち主人が好きという訳ではないが別に構い手がなかったからやむを得んのである。その後いろいろ経験の上、朝は飯櫃の上、夜は炬燵の上、天気のよい昼は椽側へ寝る事とした。しかし一番心持の好いのは夜に入ってここのうちの小供の寝床へもぐり込んでいっしょにねる事である。この小供というのは五つと三つで夜になると二人が一つ床へ入って一間へ寝る。吾輩はいつでも彼等の中間に己れを容るべき余地を見出してどうにか、こうにか割り込むのであるが、運悪く小供の一人が眼を醒ますが最後大変な事になる。小供は――ことに小さい方が質がわるい――猫が来た猫が来たといって夜中でも何でも大きな声で泣き出すのである。すると例の神経胃弱性の主人は必ず眼をさまして次の部屋から飛び出してくる。現にせんだってなどは物指で尻ぺたをひどく叩かれた。吾輩は人間と同居して彼等を観察すればするほど、彼等は我儘なものだと断言せざるを得ないようになった。ことに吾輩が時々同衾する小供のごときに至っては言語同断である。自分の勝手な時は人を逆さにしたり、頭へ袋をかぶせたり、抛り出したり、へっついの中へ押し込んだりする。しかも吾輩の方で少しでも手出しをしようものなら家内総がかりで追い廻して迫害を加える。この間もちょっと畳で爪を磨いだら細君が非常に怒ってそれから容易に座敷へ入れない。台所の板の間で他が顫えていても一向平気なものである。吾輩の尊敬する筋向の白君などは逢う度毎に人間ほど不人情なものはないと言っておらるる。白君は先日玉のような子猫を四疋産まれたのである。ところがそこの家の書生が三日目にそいつを裏の池へ持って行って四疋ながら棄てて来たそうだ。白君は涙を流してその一部始終を話した上、どうしても我等猫族が親子の愛を完くして美しい家族的生活をするには人間と戦ってこれを剿滅せねばならぬといわれた。一々もっともの議論と思う。また隣りの三毛君などは人間が所有権という事を解していないといって大に憤慨している。元来我々同族間では目刺の頭でも鰡の臍でも一番先に見付けたものがこれを食う権利があるものとなっている。もし相手がこの規約を守らなければ腕力に訴えて善いくらいのものだ。しかるに彼等人間は毫もこの観念がないと見えて我等が見付けた御馳走は必ず彼等のために掠奪せらるるのである。彼等はその強力を頼んで正当に吾人が食い得べきものを奪ってすましている。白君は軍人の家におり三毛君は代言の主人を持っている。吾輩は教師の家に住んでいるだけ、こんな事に関すると両君よりもむしろ楽天である。ただその日その日がどうにかこうにか送られればよい。いくら人間だって、そういつまでも栄える事もあるまい。まあ気を永く猫の時節を待つがよかろう。我儘で思い出したからちょっと吾輩の家の主人がこの我儘で失敗した話をしよう。元来この主人は何といって人に勝れて出来る事もないが、何にでもよく手を出したがる。俳句をやってほととぎすへ投書をしたり、新体詩を明星へ出したり、間違いだらけの英文をかいたり、時によると弓に凝ったり、謡を習ったり、またあるときはヴァイオリンなどをブーブー鳴らしたりするが、気の毒な事には、どれもこれも物になっておらん。その癖やり出すと胃弱の癖にいやに熱心だ。後架の中で謡をうたって、近所で後架先生と渾名をつけられているにも関せず一向平気なもので、やはりこれは平の宗盛にて候を繰返している。みんながそら宗盛だと吹き出すくらいである。この主人がどういう考になったものか吾輩の住み込んでから一月ばかり後のある月の月給日に、大きな包みを提げてあわただしく帰って来た。何を買って来たのかと思うと水彩絵具と毛筆とワットマンという紙で今日から謡や俳句をやめて絵をかく決心と見えた。果して翌日から当分の間というものは毎日毎日書斎で昼寝もしないで絵ばかりかいている。しかしそのかき上げたものを見ると何をかいたものやら誰にも鑑定がつかない。当人もあまり甘くないと思ったものか、ある日その友人で美学とかをやっている人が来た時に下のような話をしているのを聞いた。「どうも甘くかけないものだね。人のを見ると何でもないようだが自ら筆をとって見ると今更のようにむずかしく感ずる」これは主人の述懐である。なるほど詐りのない処だ。彼の友は金縁の眼鏡越に主人の顔を見ながら、「そう初めから上手にはかけないさ、第一室内の想像ばかりで画がかける訳のものではない。昔し以太利の大家アンドレア・デル・サルトが言った事がある。画をかくなら何でも自然その物を写せ。天に星辰あり。地に露華あり。飛ぶに禽あり。走るに獣あり。池に金魚あり。枯木に寒鴉あり。自然はこれ一幅の大活画なりと。どうだ君も画らしい画をかこうと思うならちと写生をしたら」「へえアンドレア・デル・サルトがそんな事をいった事があるかい。ちっとも知らなかった。なるほどこりゃもっともだ。実にその通りだ」と主人は無暗に感心している。金縁の裏には嘲けるような笑が見えた。
