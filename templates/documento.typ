#import "/templates/common.typ": *

#let getSurname(a) = {
  return a.split().at(-1)
}

#let sortBySurname(a) = {
  let a = (a,).flatten().dedup()
  if a.last() == false {
    a.pop()
    return a
  }
  return a.sorted(key: getSurname)
}

#let dateReplacer(x) = x.replace("-", "/")

#let dateParser(s) = {
  let tmp = s.split(regex("[-/]"))
  return datetime(day: int(tmp.at(0)), month: int(tmp.at(1)), year: int(tmp.at(2)))
}

#let conf(
  title: none,
  subtitle: none,
  author: none,
  state: none,
  intern: true,
  show_outline: true,
  show_images_list: false,
  show_tables_list: false,
  outline_depth: none,
  changelog: none,
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  lang: "it",
  font: "libertinus serif",
  size: 12pt,
  weight: "light",
  justify: true,
  heading_numbers: "1.1)",
  doc,
  ) = {
    set page(
      paper: paper,
      margin: margin,
    )
    
    set text(
      lang: lang,
      font: font,
      size: size,
      weight: weight
    )

    set heading(
      numbering: heading_numbers,
    )

    set par(justify: justify)

    set align(left)

    set pagebreak(weak: true)

    let date = changelog.at(1, default: none);
    let version = changelog.at(0, default: none);

    set document(author: author, title: title, date: dateParser(date))
    
// Pagina 0
    page(
      background: align(bottom + right, image(g.logounipd, width: 80%))
    )[
      #set align(center)
      
      #figure(image(width: 50%, g.logo))
      
      #v(2em)
      
      #text(size: 16pt)[Archi7echs - #link("mailto:"+g.mail)] \
      
      Progetto di #strong[Ingegneria del Software] \
      A.A. 2024/2025 \
    
      #align(horizon)[  
        #horizontalrule
        #v(24pt)
        #text(size: 22pt, top-edge: 0pt, weight: 700, title)
        
        #text(size: 18pt, bottom-edge: 0pt, style: "italic", subtitle)
        #v(12pt)
        #horizontalrule
      ]
      
      #figure(
        placement:bottom,
        [#grid(
          columns: (auto, 1fr),
          align: (col, row) => (left, right,).at(col),
          inset: 6pt,
          [#strong[Autore:] #author],
          [#strong[Tipologia Documento:] #ternary(intern, "Interno", "Esterno")],
          [#strong[Ultima Modifica:] #dateReplacer(date)],
          [#strong[Stato:] #state],
        )]
      )

  ]

  //fine prima pagina
  set page(numbering: "1")
  counter(page).update(1)
  
  let changelog_header = ([*Rev.*], [*Data*], [*Descrizione*], [*Elaborazione*], [*Verifica*])

  changelog = changelog_header + changelog;
  heading(
    outlined: false,
    numbering: none,
    [Tabella delle revisioni]
  )

  table(
    fill: (_, row) => if calc.odd(row) { rgb("#fbf1d0") } else { white },
    inset: 0.5em,
    columns: (auto,)*2 + (1fr,) + (auto,)*2, 
    ..changelog.map(el => text(size: 0.8em)[
      #par(justify: false, text(hyphenate: true,
        if type(el) == array {
            el.join([,\ ])
          } else {
            el
          }
        )
      )
      ]),
    )

  pb()

  if show_outline == true {
    show outline.entry.where(level: 1): strong
    outline(depth: outline_depth, indent: 1em)
    pagebreak()
  }

  if show_images_list == true {
    outline(
      title: "Lista della immagini",
      target: figure.where(kind: image),
    )
  }
  if show_tables_list == true {
    outline(
      title: "Lista delle tabelle",
      target: figure.where(kind: table),
    )
  }
  if show_images_list == true or show_tables_list == true {
    pb()
  }
  
  set text(hyphenate: true)
  set enum(indent: 12pt)
  set list(indent: 12pt)
  doc
}

#let issue_to_link(id) = {
  return link(g.org+"/"+g.docs+"/issues/"+str(id))[\##id]
}
  
#let todo(t) = {
  let todo_header = ([*Rif. Issue*], [*Assegnatario*], [*TODO*])
  let map_issue(r, t) = {
    t.enumerate().map(a => if r.contains(a.first()) and type(a.last()) == array { return issue_to_link(a.last().last()) } else { a.last() }) 
  }
  let r = array.range(0, t.len(), step: todo_header.len())
  t = todo_header + map_issue(r, t)

  align(center,
    block(width: 100%,
      table(
        fill: (_, row) => if calc.odd(row) { rgb("#fbf1d0") } else { white },
        inset: 0.5em,
        columns: (auto, auto, 1fr),
        align: center,
        ..t.map(el => [
          #par(justify: false,
            if type(el) == array {
              sortBySurname(el).join([,\ ])
            } else {
              el
            }
          )
        ]),
      )
    )
  )
}

#let decisioni(t) = {
  table(
    fill: (_, row) => if calc.odd(row) { rgb("#fbf1d0") } else { white },
    columns: (auto, auto, 1fr),
  align: center,
  inset: 6pt,
  table.header([*Pt.*], [*Argomento*], [*Decisione*]),
  ..t)
}

#let is_alphabetical(c) = {
     ((c >= "A" and c <= "Z") or (c >= "a" and c <= "z"));
}

#let glossario(w) = {
  if is_alphabetical(w) [
      #link("https://archi7echs-team.github.io/glossario.html#" + upper(w).at(0))[#w#sub(text(blue)[G])]
  ]
  else [
      #link("https://archi7echs-team.github.io/glossario.html#CaratteriSpeciali")[#w#sub(text(blue)[G])]
  ]
}

#let ordine_del_giorno(doc) = {
  context {
    let x = counter(heading).get()
    
    if x.len() > 1 {x.at(1) = 0}
    counter(heading).update(x)
  }

  set heading(numbering: (..nums) => {
    nums = nums.pos()
    if nums.len() == 1 {
      return numbering("1)", ..nums)
    } else {
      return "Punto " + numbering("1 -", nums.last())
    }
  })
  doc
}


// copy this in your file and edit

#show: conf.with(
  title: "Il titolo del documento",
  subtitle: "Il sottotitolo",
  author: "Il Goat",
  state: "Rilasciato",
  show_outline: true,
  outline_depth: 1,
  changelog: (
    "1.0.0", "29-10-2024",  "Correzioni", p.checchinato, p.lucato,
    "0.9.0", "28-10-2024",  "Prima stesura documento" + lorem(20), "Team " + emph(g.name), p.lucato,
  )
)
