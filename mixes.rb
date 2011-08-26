require 'utils'

puts <<-MIXHEAD
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>THESE ARE NOT THE DRIODS YOURE LOOKING FOR..</title>
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
      background-color: #080808;
      background-image: url('images/srm-full.jpg');
      background-repeat: repeat-x;
      background-position: left bottom;
      margin: 0;
      padding: 0;
      font-family: 'Reenie Beanie',  Monaco;
      font-size: 38pt;
    }
     ul {
        padding: 25px 0 0 30px;
        list-style: none;
      }
    li {
    }
    a {
      color: #f00;
    }
    a:hover {
      color: #ff0;
      text-decoration: none;
    }
    #intro {
        float: left;
    }
    #write {
    }
    #facebox .popup {
      font-size: 22pt;
      font-weight: bold;
    }
    #facebox .close_image {
      padding: 5px;
      background-color: #fff;
    }
    </style>
  </head>
  <body>
  <div id="write">
      <ul>
MIXHEAD

mixes = [
'this_is_war',
'90_degrees_counter_clockwise',
'21st_century_digital_surgeon',
'resignation',
'trackter_beam__invasion',
'neckthrust619'
]

mixes.each do |mix|
  puts <<-TRKS
        <li><a href="##{mix}" rel="facebox">#{mix.upcase}</a></li>
  TRKS
end

puts '      </ul>'

mixes.each do |mix|
  puts pop(mix, 'mixes')
end

puts <<-MIXTAIL
    </div>
  </body>
</html>
MIXTAIL
