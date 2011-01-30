require 'utils'

puts TOP

puts <<-TEXT      
      <div id="text">
        <p>
BACK before the all the digital toys we have now, you had to cut music onto an acetate (aka a 'dubplate' which is a one off record that lasts abt 100 or so plays), if you wanted to play it live. It's tricky too cause you gotta keep it short for a wider cut, i.e. more volume. You might ask: Can't you just turn it up when you want more volume? Not if it's already all the way up, no. Plus a wider cut lets you take lots of risk with low end base (as it gets low, the groove gets wider, too wide and they run into each other, not good). Most of these dubs were cut at OSCAR DA GROUCH's shop in Los Angeles (<a href="http://www.turnstylerecords.com/" target="_TOP">TURNSTYLE</a>), making sure to saturate the dance floor and the FM airwaves with all the might of SRM.. 
        </p>
        <p>
What follows is primarily traks that were tested in front of a live audience / legit sound system in one form or another. You want to confirm two things: 1) the crowd seems to moving / keeping up with the changes  2) the trak itself sounds good on a live PA. Get the 2nd one right and you can almost guarantee the 1st. Drum and Bass is interesting music because it pushes the contradictions of dancibility and complexity.. it takes your mind on an elated journey of limitless direction while holding your body close enough to the beat to still shake your ass, the Divine Duality. How good conversion takes you on a journey of discovery or familarity, strip out the words, and what's left is Drum and Bass.. Of course some of these dubplates made it onto vinyl, i.e. early editions of eventual records. 
        </p>
      </div>   
      <div id="traks">
        <table>
      TEXT

traks = [
'andromida',
'ballistic_impulse',
'battery_tunnel_10-15',
'black_angeles',
'black_thursday',
'brooklyn-fadeaway',
'cash_rules__f_wu_tang_clan',
'chk-ths',
'chomsky-southvietnam',
'close-air-support',
'colonel-kurtz',
'columbian_necktie',
'crossover',
'elevators--f-outkast',
'end_axe',
'deep-in-the-rhine',
'disimilation',
'dub1ne',
'dont-get-me-started',
'how-high--f-method-man',
'illtek_intro',
'illtekonics_epilogue',
'illtektonics_alt',
'illtektoniks',
'imperial-march',
'imperial_overdrive',
'interstellar_empire',
'jive-fly',
'joint-call-for-fire',
'just_dis',
'killtacular',
'last_call',
'mid_knight_rider',
'microkorg-gangsta',
'mind-wash-anza-borrego',
'our_choice_is_ours_SRM',
'razing_hell',
'red-moon-cut',
'red-moon-refactor',
'red-moon-battalion-opus-number-x',
'resurrektion',
'richotte',
'ring_the_alarm__f_tenor_saw',
'say_goodnite_to_da_bad_guy',
'seekndestroy',
'selecta',
'sinister',
'southern_march',
'strafing_run',
'subterranean',
'subterfuge',
'suspension_of_disbelief',
'tek11-resurrection',
'teknkl-diskourse',
'teknkl-diskourse_feat_2short',
'tek-support',
'terradome',
'there-goes-da-hood--f-body-count',
'thirty-four',
'unda_mi_sensi',
'vendetta',
'walking_on_the_moon',
'war_pigs_metalcore--black-sabbath-cover',
'wessex_allstars',
'west_fourth',
'2-leged-kat']
   
traks.each do |trak|
  puts <<-TRKS
         <tr><td class="red"><a href="##{trak}" rel="facebox">#{trak.upcase}</a></td></tr>
  TRKS
end
    
puts MID

traks.each do |trak|
  puts pop(trak)
end
    
puts TAIL