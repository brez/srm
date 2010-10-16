puts <<-TOP
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>FORTUNE FLAVORS ARE BOLD</title>
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
    <h1>THE RISE AND FALL OF SUPERIOR READY MIX <span class="yellow">(SRM)</span> <br/> &nbsp;<span class="red">DUBPLATES</span></h1>
    <div id="traks">
      <table>
      TOP
      
traks = [
'2-leged-kat',
'ballistic_impulse',
'battery_tunnel_10-15',
'black_angeles',
'black_thursday',
'brooklyn-fadeaway',
'cash_rules__f_wu_tang_clan',
'chk-ths',
'chomsky-southvietnam',
'colonel-kurtz',
'columbian_necktie',
'elevators--f-outkast',
'end_axe',
'how-high--f-method-man',
'illtek_alt',
'illtek_intro',
'illtekonics_epilogue',
'illtektonics_alt',
'illtektoniks',
'imperial-march',
'imperial_overdrive',
'jive-fly',
'last_call',
'mid_knight_rider',
'mind-wash-anza-borrego',
'razing_hell',
'resurrektion',
'ring_the_alarm__f_tenor_saw',
'say_goodnite_to_da_bad_guy',
'sinister',
'southern_march',
'subterfuge',
'suspension_of_disbelief',
'teknkl-diskourse',
'teknkl-diskourse_feat_2short',
'there-goes-da-hood--f-body-count',
'thirty-four',
'unda_mi_sensi',
'walking_on_the_moon',
'west_fourth' ]
   
traks.each do |trak|
  puts <<-TRKS
         <tr><td class="red"><a href="##{trak}" rel="facebox">#{trak.upcase}</a></td></tr>
  TRKS
end
    
puts <<-MID
    </table>
    </div>
MID

traks.each do |trak|
  puts <<-POP
    <div id="#{trak}" style="display:none;">
      <div id="popup-trak">
	    #{trak.upcase} <br/>
        <object type="application/x-shockwave-flash" data="player/player_mp3.swf" width="200" height="20">
          <param name="movie" value="player/player_mp3.swf" />
          <param name="FlashVars" value="mp3=http://s3.amazonaws.com/srm-dubplates/#{trak}.mp3&showvolume=1&showinfo=1&bgcolor1=ff0b0f&bgcolor2=a40005" />
        </object>
      </div>
      <div style="clear:both"></div>
    </div>
  POP
end
    
puts <<-TAIL
    <div id="text">
      <p>
BACK before the all the digital toys we have now, you had to cut music onto an acetate (aka a 'dubplate' which is a one off record that lasts abt 100 or so plays), if you wanted to play it live. It's tricky too cause you gotta keep it short for a wider cut, i.e. more volume. You might ask: Can't you just turn it up when you want more volume? Not if it's already all the way up, no. Plus a wider cut lets you take lots of risk with low end base (as it gets low, the groove gets wider, too wide and they run into each other, not good). We cut truckloads a dubs at OSCAR DA GROUCH's shop in the Los Angeles (<a href="http://www.turnstylerecords.com/" target="_TOP">TURNSTYLE</a>), making sure to saturate the dance floor and the FM airwaves with all the might of SRM.. 
      </p>
      <p>
What follows is primarily traks that were tested in front of a live audience / legit sound system. You want to confirm two things: 1) the crowd seems to moving / keeping up with the changes  2) the trak itself sounds good on a live PA. Get the 2nd one right and you can almost guarantee the 1st. Drum and Bass is interesting music because it pushes the contradictions of dancibility and complexity.. it takes your mind on an elated journey of limitless direction while holding your body close enough to the beat to still shake your ass, the Divine Duality. Like a good conversion takes you on a journey of discovery or familarity, strip out the words, and what's left is Drum and Bass. Of course some of these dubplates made it onto vinyl, i.e. early editions of eventual records. 
      </p>
    </div>
      <img class="logo" src="SRM.jpg" width="200px"/>
      <p class="legal">
        AN SRM RECORDINGS PRODUCTION <br/>
        &copy;2010 SRM RECORDINGS, BROOKLYN NY<br/>
        ALL TEXT IS PUBLIC DOMAIN
      </p>
      <div style="clear:both"></div>
  </div>
  </body>
</html>
TAIL