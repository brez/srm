require 'utils'

TOPMUSIC = <<-TOPMUSIC
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
    <style>
      body { 
        background: #000 url('images/srm-bg.png') repeat-y 50% 0%;
      }
    </style>
  </head>
  <body>
    <div id="main">
    TOPMUSIC

puts <<-LEAD 
      <div id="traks">
        <table>
      LEAD

traks = {
'srm001-superior-drumnbreakz-a' => '(SRM001)',
'srm001-superior-drumnbreakz-b' => '(SRM001)',
'srm002-apollo13' => '(SRM002)',
'srm002-grow-yo-locks' => '(SRM002)',
'srm003-blackened' => '(SRM003)',
'srm003-get-up-stand-up' => '(SRM003)',
'srm005-red-moon-battalion-a' => '(SRM005)',
'srm005-red-moon-battalion-b' => '(SRM005)',
'srm006-get-to-the-point' => '(SRM006)',
'srm006-we-ll-take-you-to-war' => '(SRM006)',
'srm008-south-of-heaven' => '(SRM008)',
'srm008-who-dem' => '(SRM008)'
}

plates = {
'andromida' => '(DUB', 
'ballistic_impulse' => '(DUB', 
'battery_tunnel_10-15' => '(DUB', 
'black_angeles' => '(DUB', 
'black_thursday' => '(DUB', 
'brooklyn-fadeaway' => '(DUB', 
'cash_rules__f_wu_tang_clan' => '(DUB', 
'chk-ths' => '(DUB', 
'chomsky-southvietnam' => '(DUB', 
'close-air-support' => '(DUB', 
'colonel-kurtz' => '(DUB', 
'columbian_necktie' => '(DUB', 
'crossover' => '(DUB', 
'elevators--f-outkast' => '(DUB', 
'end_axe' => '(DUB', 
'deep-in-the-rhine' => '(DUB', 
'disimilation' => '(DUB', 
'dub1ne' => '(DUB', 
'dont-get-me-started' => '(DUB', 
'how-high--f-method-man' => '(DUB', 
'illtek_intro' => '(DUB', 
'illtekonics_epilogue' => '(DUB', 
'illtektonics_alt' => '(DUB', 
'illtektoniks' => '(DUB', 
'imperial-march' => '(DUB', 
'imperial_overdrive' => '(DUB', 
'interstellar_empire' => '(DUB', 
'jive-fly' => '(DUB', 
'joint-call-for-fire' => '(DUB', 
'just_dis' => '(DUB', 
'killtacular' => '(DUB', 
'last_call' => '(DUB', 
'mid_knight_rider' => '(DUB', 
'microkorg-gangsta' => '(DUB', 
'mind-wash-anza-borrego' => '(DUB', 
'our_choice_is_ours_SRM' => '(DUB', 
'razing_hell' => '(DUB', 
'red-moon-cut' => '(DUB', 
'red-moon-refactor' => '(DUB', 
'red-moon-battalion-opus-number-x' => '(DUB', 
'resurrektion' => '(DUB', 
'richotte' => '(DUB', 
'ring_the_alarm__f_tenor_saw' => '(DUB', 
'say_goodnite_to_da_bad_guy' => '(DUB', 
'seekndestroy' => '(DUB', 
'selecta' => '(DUB', 
'sinister' => '(DUB', 
'southern_march' => '(DUB', 
'strafing_run' => '(DUB', 
'subterranean' => '(DUB', 
'subterfuge' => '(DUB', 
'suspension_of_disbelief' => '(DUB', 
'tek11-resurrection' => '(DUB', 
'teknkl-diskourse' => '(DUB', 
'teknkl-diskourse_feat_2short' => '(DUB', 
'tek-support' => '(DUB', 
'terradome' => '(DUB', 
'there-goes-da-hood--f-body-count' => '(DUB', 
'thirty-four' => '(DUB', 
'unda_mi_sensi' => '(DUB', 
'vendetta' => '(DUB', 
'walking_on_the_moon' => '(DUB', 
'war_pigs_metalcore--black-sabbath' => '(DUB', 
'wessex_allstars' => '(DUB', 
'west_fourth' => '(DUB', 
'2-leged-kat' => '(DUB'
}


traks.sort.each do |trak, catalog|
  puts <<-TRKS
         <tr><td><span class="meta">#{catalog}</span> <a href="##{trak}" rel="facebox">#{trak.upcase[7..-1]}</a></td></tr>
  TRKS
end

plate_index = 0
plates.each do |plate, meta|
  puts <<-TRKS
         <tr><td><span class="meta">#{meta}#{"%03d" % plate_index})</span> <a href="##{plate}" rel="facebox">#{plate.upcase}</a></td></tr>
  TRKS
  plate_index += 1
end

puts MID

traks.each do |trak, genre|
  puts pop(trak, 'vinyl')
end

plates.each do |plate, meta|
  puts pop(plate, 'dubplates')
end

puts TAIL
