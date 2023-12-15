<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    ◊define[title ◊hash-ref[metas 'title]]
    ◊when/splice[title]<title>◊|title| of Metan</title>
    ◊define[description ◊hash-ref[metas 'description ""]]
    ◊when/splice[◊not[◊equal?[description ""]]]{<description>◊|description|</description>}
    <link rel="stylesheet" type="text/css" media="all" href="/styles.css" />
    <meta name="viewport" content="width=device-width" />
  </head>
  <body>
    <p>
      ◊->html[doc #:splice? #t]
    </p>
  </body>
</html>
