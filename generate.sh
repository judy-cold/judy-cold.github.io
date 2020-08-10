#!/bin/bash

function images
{
        for file in `ls -1vr ./content/gallery/*`; do
                echo -e "\t\t<div><img src="content/gallery/${file##*/}" alt="" /></div>\n"
        done
}

cat > index.html << _EOF_
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <title>Judy Cold</title>
      <link rel="stylesheet" href="style.css" />
   </head>
   <body>
      <div class="header">
         <h2>Judy Cold</h2>
      </div>
      <div class="container">

$(images "$1")
         
      </div>
   </body>
</html>
_EOF_
