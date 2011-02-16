require 'utils'

puts TOP

puts <<-TEXT
      <div id="text">
<p style="border: 6px solid yellow; margin: 0 10px 10px 10px; padding: 10px; font-size: 20pt;">
  SRM RECORDINGS presents the long awaited 10th release, a double album <a href="#">explosion</a> of DRUMNBASS (red) and DUBSTEP (yellow) - Listen / Buy it <a href="vinyl.html">NOW</a>.. 
 </p>
        <p>
SUPERIOR READY MIX (SRM) unofficially formed over the span of a few years and countless house parties as a DRUMNBASS crew, specializing in its unique form of renegade skratch precision. SRM soon worked with the such legendary underground crews as 45PSI, DRUMZ, BULLETPROOF, RUFFNECK ALLIANCE, LARGEHUMAN, PROPECHY to produce events of their own from local one-offs and weekly/monthly events to the first ever FM DRUMNBASS radio program in Southern California -> 'EKG' showcased local and nationwide DJs/Producers and ran every saturday night for 17 months, on the now defunct, 92/1FM under the direction of the legendary <a href="http://www.signonsandiego.com/feature/524/halloran.html">Mike Halloran</a>. 
        </p>
        <p>
Weary from a 16-show run producing the backroom at the RAPTURE [45PSI], SRM decided its day of producing parties had reached its natural end and bowed out, leaving its legacy to the scores of independent DRUMNBASS promoters in what would become known as the glory days of DRUMNBASS in Southern California. Occasionally coming out of retirement, SRM continues to throw one off parties and remains active producing music in its new spiritual home of Brooklyn, NY. 
        </p>
        <p>
This archive represents the entirety of what SRM has produced starting from 1999 (the <a href="beginnings.html">BEGINNINGS</a>) unto the present day. So far, SRM RECORDINGS has produced 9 <a href="vinyl.html">VINYL</a> releases as well as countless <a href="dubplates.html">DUBPLATES</a> and <a href="mixes.html">MIXES</a> with more on the way. RESPECT to all those who have been influential in the advent of SUPERIOR READY MIX. 
        </p>
      </div>   
      <div id="traks">
        <table>
      TEXT

traks = [
'vinyl',
'dubplates',
'mixes',
'beginnings',
'images',
'+']
   
traks.each do |trak|
  puts <<-TRKS
         <tr><td class="red big"><a href="#{trak}.html">#{trak.upcase}</a></td></tr>
  TRKS
end
    
puts MID
    
puts TAIL
