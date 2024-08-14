
#let font-sans-serif = ("Harano Aji Gothic")
#let font-serif = ("New Computer Modern", "Harano Aji Mincho")
#let font-monospace = ("HackGen Console NF")

#let article(
  title: "Untitled",
  subtitle: none,
  author: none,
  date: none,
  paginate: true,
  bib: none,
  body,
) = {
  // メタデータの設定
  set document(title: title)

  // 本文のフォントの設定
  set text(font: font-serif, lang: "ja", size: 11pt, weight: "regular")

  // コードブロックの設定
  show raw: set text(font: font-monospace)

  // ページの設定
  set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 2.8cm, bottom: 2.65cm),
    footer: if (paginate) {
      [
        #set align(center)
        #set text(12pt)
        #counter(page).display("1")
      ]
    } else {
      none
    },
  )

  // 数式の設定
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  // 表の設定
  show table.cell.where(y: 0): strong
  set table(stroke: (x, y) => (
    x: 0pt,
    top: if y == 0 {
      1pt
    } else if y == 1 {
      0.5pt
    } else {
      0pt
    },
    bottom: 1pt,
  ))
  show figure.where(kind: table): set figure.caption(position: top)

  // 箇条書きの設定
  set enum(indent: 1.5em)
  set list(indent: 1.5em)

  // 見出しの設定
  set heading(numbering: (..nums) => {
    let level = nums.pos().len()
    let text-size = if level == 1 {
      16pt
    } else if level == 2 {
      13pt
    } else {
      11pt
    }
    // e.g. "1.1.1"
    text(font: font-sans-serif, size: text-size, nums.pos().map(str).join("."))
    h(1em, weak: true)
  })
  show heading: set text(font: font-sans-serif, weight: "medium")

  show heading: it => {
    pad(
      top: if (it.level in (1, 2)) { 0.4em } else { 0em },
      bottom: if (it.level in (1, 2)) { 0.3em } else { 0em },
      left: 0em, // NOTE: 参考文献の見出しの位置がずれるのを防ぐため
    )[
      #it
    ]
  }

  // インデントの設定
  // https://github.com/typst/typst/issues/311
  show heading: it => {
    it
    par(text(size: 0.5em, ""))
  }

  // タイトルの表示
  v(1.68cm)
  align(center, text(font: font-serif, size: 19pt, title))

  // サブタイトルの表示
  if subtitle != none {
    v(-0.42cm)
    align(center, text(font: font-serif, size: 13pt, subtitle))
    v(0.2cm)
  }

  // 執筆者の表示
  if author != none {
    v(0.15cm)
    align(center, text(font: font-serif, size: 14pt, author))
  }

  // 日付の表示
  if date != none {
    v(0.15cm)
    align(center, text(font: font-serif, size: 14pt, date))
  }

  // 本文の設定
  set par(justify: true, first-line-indent: 1em, leading: 1em)

  // 本文の表示
  v(1.9cm, weak: true)
  body

  // 参考文献の表示
  if bib != none {
    set text(lang: "en")
    bib
  }
}
