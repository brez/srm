require 'utils'

puts TOP

puts <<-TEXT      
      <div id="text">
        <p>
XMEGA, thoroughly rinsed after 2 years in the english / irish jungle scene returns stateside to nurse an epic hangover n generally kick it with 1201 droppn whatever came their way onto a tiny tape recorder. The result is miserable sound quality but a peek into the foundations of SRM. During this time, a fateful house party of masterful skratch precision brings together the renegade line up of 1201, DANGER-S, XMEGA, yanking their name from a cement truck passing by.. SUPERIOR READY MIX.
        </p>
        <p>
What follows is the 'BEGINNINGS', a crude set of complete recordings (from tape) with little or no direction recorded raw on a cheap radio shack portable tape recorder (one tape per track) that sat on the bass drum in roughly late 1999, when SRM got busy producing parties, eventually making their way to the FM airwaves, producing EKG radio on 92/1FM under the direction of the legendary <a href="http://www.signonsandiego.com/feature/524/halloran.html">Mike Halloran</a>.. SRM RECORDINGS is made official shortly after the fall of 92/1FM with the legendary jungle break record 'SUPERIOR DRUMNBREAKZ' (SRM001)
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
    
puts <<-MID
    </table>
    </div>
MID

traks.each do |trak, genre|
  puts pop(trak)
end
    
puts TAIL