puts <<-TOP
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>LET ME SERENADE THE STREETS OF LA</title>
    <link href='http://fonts.googleapis.com/css?family=Reenie+Beanie' rel='stylesheet' type='text/css'>
    <link href='rise.css' rel='stylesheet' type='text/css'>
    <script src="js/jquery.js" type="text/javascript"></script>
    <link href="js/facebox/facebox.css" media="screen" rel="stylesheet" type="text/css"/>
    <script src="js/facebox/facebox.js" type="text/javascript"></script>
    <script>
      jQuery(document).ready(function($) {
        $('a[rel*=facebox]').facebox() 
      })
    </script>
  </head>
  <body>
  <div id="header">
  </div>
  <div id="main">
    <h1>SUPERIOR READY MIX RECORDINGS &nbsp;<span class="yellow">(SRM)</span> <br/> &nbsp;<span class="red">DUBPLATES</span></h1>
    <div id="traks">
      <table>
      TOP
      
traks = {
'solamente' => '(blues)',
'f2b2f' => '(hiphop)',
'breathe' => '(pink floyd cover)',
'saint-stephens-green' => '(live drumnbass)',
'dc-recordshop' => '(blues)',
'catalog-3' => '(live drumnbass)',
'way-down-south' => '(blues)',
'untitled-one' => '(hiphop)',
'seven2' => '(experimental)',
'papa-john-in-the-kitchen' => '(blues)',
'friday-afternoon-free' => '(blues)',
'drum-out-takes' => '(blues)',
'tides-reissue' => '(live drumnbass)',
'method_revisited_jam' => '(blues/rock)',
'the-fatman' => '(live drumnbass)',
'tides-variation' => '(experimental)',
'grafton-street' => '(experimental)',
'hardcore-number-one' => '(experimental)' }
    
      
traks.each do |trak, genre|
  puts <<-TRKS
         <tr><td class="red"><a href="##{trak}" rel="facebox">#{trak.upcase}</a></td><td>#{genre}</td></tr>
  TRKS
end
    
puts <<-MID
    </table>
    </div>
MID

traks.each do |trak, genre|
  puts <<-POP
    <div id="#{trak}" style="display:none;">
      <div id="popup-trak">
	    #{trak.upcase} <br/>
        <object type="application/x-shockwave-flash" data="player/player_mp3.swf" width="200" height="20">
          <param name="movie" value="player/player_mp3.swf" />
          <param name="FlashVars" value="mp3=http://s3.amazonaws.com/srm-beginnings/#{trak}.mp3&showvolume=1&showinfo=1&bgcolor1=ff0b0f&bgcolor2=a40005" />
        </object>
      </div>
      <div style="clear:both"></div>
    </div>
  POP
end
    
puts <<-TAIL
    <div id="text">
      <p>
XMEGA, thoroughly rinsed after 2 years in the english / irish jungle scene returns stateside to nurse an epic hangover n generally kick it with 1201 droppn whatever came their way onto a tiny tape recorder. The result is miserable sound quality but a peek into the foundations of SRM. During this time, a fateful house party of masterful skratch precision brings together the renegade line up of 1201, DANGER-S, XMEGA, yanking their name from a  cement truck passing by.. SUPERIOR READY MIX. 
      </p>
      <p>
What follows is the 'BEGINNINGS', a crude set of complete recordings (from tape) with little or no direction recorded raw on a cheap radio shack portable tape recorder (one tape per track) that sat on the bass drum in roughly late 1999, when SRM got busy producing parties, eventually making their way to the FM airwaves, producing EKG radio on 92/1FM under the direction of the legendary <a href="http://www.signonsandiego.com/feature/524/halloran.html" target="_TOP">Mike Halloran</a>..  SRM RECORDINGS is made official shortly after the fall of 92/1FM with the legendary jungle break record 'SUPERIOR DRUMNBREAKZ' (SRM001)
      </p>
    </div>
      <img class="logo" src="SRM-recordings.jpg" width="200px"/>
      <p class="legal">
        AN SRM RECORDINGS PRODUCTION <br/>
        <span id="message">A DECADE OF CONCRETE..</span><br/>
        &copy;2010 SRM RECORDINGS, BROOKLYN NY<br/>
        ALL TEXT IS PUBLIC DOMAIN
      </p>
      <div style="clear:both"></div>
  </div>
  </body>
</html>
TAIL
