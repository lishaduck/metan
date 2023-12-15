<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    ◊define[title ◊select-from-metas['title metas]]
    ◊when/splice[title]<title>◊|title| of Metan</title>
    ◊define[description ◊select-from-metas['description metas]]
    ◊when/splice[description]{<description>◊|description|</description>}
    <link rel="stylesheet" type="text/css" media="all" href="/styles.css" />
    <meta name="viewport" content="width=device-width" />
  </head>
  <body>
    ◊->html[doc #:splice? #t]
    <p>
      The current page is called ◊|here|.
      ◊(define prev-page (previous here-page))
      ◊when/splice[prev-page]{The previous is <a href="◊|prev-page|">◊|prev-page|</a>.}
      ◊(define next-page (next here-page))
      ◊when/splice[next-page]{The next is <a href="◊|next-page|">◊|next-page|</a>.}
    </p>
  </body>
</html>
