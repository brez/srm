require 'utils'

puts <<-BEGINNINGTOP
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
    <style>
      body {
	    background-image: url(images/imperial2.jpg);
	  }
	  a:hover {
     color: #000;
      margin-bottom: 0px;
      border-bottom: 10px solid red;
    }
	  .view {
	    background-color: #ff0;
	  }
	  .meta {
		color: #000;
	  }
	</style>
	<script>
      jQuery(document).ready(function($) {
        $('a[rel*=facebox]').facebox();
        $('#text').click(function () {
	      $(this).toggleClass('view');
	      $('table tr').toggleClass('view'); 
	    });
      })
    </script>
  </head>
  <body>
    <div id="main">
  BEGINNINGTOP

puts <<-TEXT
      <div id="text" style="width: 80%; margin: 0 auto; padding: 20px;">
        <p class="important" style="width: 285px; text-align: center">
          <img src='images/tape.png'/>
        </p>
        <p>
XMEGA, thoroughly rinsed after 2 years in the english / irish jungle scene returns stateside to nurse an epic hangover n generally kick it with 1201 droppn whatever came their way onto a tiny tape recorder. The result is miserable sound quality but a peek into the foundations of SRM. During this time, a fateful house party of masterful skratch precision brings together the renegade line up of 1201, DANGER-S, XMEGA, yanking their name from a cement truck passing by.. SUPERIOR READY MIX.
        </p>
        <p>
What follows is the 'BEGINNINGS', a crude set of complete recordings (from tape) with little or no direction recorded raw on a cheap radio shack portable tape recorder (one tape per track) that sat on the bass drum in roughly late 1999, when SRM got busy producing parties, eventually making their way to the FM airwaves.. SRM RECORDINGS is made official shortly after the fall of 92/1FM with the legendary jungle break record 'SUPERIOR DRUMNBREAKZ' (SRM001)
        </p>
      </div>
      <div id="traks">
        <table>
      TEXT

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
         <tr><td><span class="meta">#{genre}</span> <a href="##{trak}" rel="facebox">#{trak.upcase}</a></td></tr>
  TRKS
end

puts MID

traks.each do |trak, genre|
  puts pop(trak, 'beginnings')
end

puts TAIL
