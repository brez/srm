TOP = <<-TOP
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>LET ME SERENADE THE STREETS OF LA</title>
    <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
    <link href='rise.css' rel='stylesheet' type='text/css'>
    <script src="js/jquery.js" type="text/javascript"></script>
    <link href="facebox/facebox.css" media="screen" rel="stylesheet" type="text/css"/>
    <script src="facebox/facebox.js" type="text/javascript"></script>
    <script>
      jQuery(document).ready(function($) {
        $('a[rel*=facebox]').facebox() 
      })
    </script>
  </head>
  <body>
    <div id="main">
    TOP


    
MID = <<-MID
        </table>
      </div> <!-- end traks -->
   MID

TAIL = <<-TAIL
      <div style="clear: both"></div>
      <div id="info">
        <p style="margin-bottom: 0">
        </p>
      </div>
    </div> <!-- end main -->
    <div style="clear:both"></div>
    <div id="footer"></div>
  </body>
</html>
TAIL

def pop(trak, category)
  <<-POP
      <div id="#{trak}" style="display:none;" class="popup-trak">
	      #{trak.upcase} <br/>
        <object type="application/x-shockwave-flash" data="player/player_mp3.swf" width="200" height="20">
          <param name="movie" value="player/player_mp3.swf" />
          <param name="FlashVars" value="mp3=http://s3.amazonaws.com/srm-#{category}/#{trak}.mp3&showvolume=1&showinfo=1&bgcolor1=ff0b0f&bgcolor2=a40005" />
        </object>
        (<a class="download" href="http://s3.amazonaws.com/srm-#{category}/#{trak}.mp3">DOWNLOAD</a>)
      </div>
    POP
end
