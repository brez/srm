require 'utils'

puts TOP

puts <<-TEXT
      <div id="text">
        <p>
IN TRUE independent form, SRM sold the bulk of their hardware to finance the first record, fortunately selling them all and getting back on track producing parties and additional records in short order. From there SRM went on to publish more or our thier work branching out to include the likes of ZYFO (SRM004), ABBY NORML (SRM005), the LOS ANGELES Legend, R.A.W. (SRM007) aka 6BLOCC, and the Canadian Powerhouse, CAPITAL-J (SRM009).
        </p>
        <p>
ALL SRM record sleeves are handcrafted silkscreen covers. Currently, the best way to find out of print SRM records in the <a href="http://www.discogs.com/sell/list?label=Superior+Ready+Mix+Recordings&ev=lb">DISCOGS</a> auction website. 
        </p>
      </div>   
      <div id="traks">
        <table>
      TEXT

traks = {
'srm001-superior-drumnbreakz-a' => '(SRM001)',
'srm001-superior-drumnbreakz-b' => '(SRM001)',
'srm002-apollo13' => '(SRM002)',
'srm002-grow-yo-locks' => '(SRM002)',
'srm003-blackened' => '(SRM003)',
'srm003-get-up-stand-up' => '(SRM003)',
'srm004-desire-power_zyfo' => '(SRM004)',
'srm004-linear-phase_zyfo' => '(SRM004)',
'srm005-red-moon-battalion-a' => '(SRM005)',
'srm005-red-moon-battalion-b' => '(SRM005)',
'srm006-get-to-the-point' => '(SRM006)',
'srm006-we-ll-take-you-to-war' => '(SRM006)',
'srm007-johnny-too-bad_r-a-w' => '(SRM007)',
'srm008-south-of-heaven' => '(SRM008)',
'srm008-who-dem' => '(SRM008)',
'srm009-bang-yo-head_capital-j' => '(SRM009)',
'srm009-rumble-jungle_capital-j' => '(SRM009)'
}


traks.sort.reverse.each do |trak, catalog|
  puts <<-TRKS
         <tr><td><span class="meta">#{catalog}</span> <a href="##{trak}" rel="facebox">#{trak.upcase[7..-1]}</a></td></tr>
  TRKS
end

puts <<-MID
    </table>
    </div>
MID

traks.each do |trak, genre|
  puts pop(trak, 'vinyl')
end

puts TAIL
