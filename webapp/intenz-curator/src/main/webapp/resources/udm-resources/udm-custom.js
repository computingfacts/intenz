// UDMv4.2 //
/***************************************************************/
var um=new Object;um.menuClasses=[],um.itemClasses=[],um.menuCode=[];
/***************************************************************\

  ULTIMATE DROP DOWN MENU Version 4.2 by Brothercake
  http://www.udm4.com/
  
  This script may not be used or distributed without license

\***************************************************************/


/***************************************************************\
 * CORE CONFIGURATION
\***************************************************************/


//path to images folder 
um.baseSRC = "udm-resources/";


//navbar orientation
um.orientation = [
	"horizontal",	// alignment ["vertical"|"horizontal"|"popup"]
	"left",		// h align ["left"|"right"]
	"top",		// v align ["top"|"bottom"]
	"absolute",	// positioning ["relative"|"absolute"|"fixed"|"allfixed"]
	"0",	// x position ["em"|"px"|"pt"|"0"]
	"0",	// y position ["em"|"px"|"pt"|"0"]
	"1000",		// z order ["0" to "10000"] (menu takes 20000 headroom)
	];
	

//navbar list output
um.list = [
	"rigid",	// horizontal overflow ["rigid"|"flexible"]
	"yes",		// show menus to IE-based screenreaders ["yes"|"no"]
	"yes",		// hide static menus for netscape 4 ["yes"|"no"]
	];


//menu behaviors	
um.behaviors = [
	"200",		// open timer ["milliseconds"|"0"]
	"500",		// close timer ["milliseconds"|"0"|"never"]
	"yes",		// reposition menus to stay inside the viewport ["yes"|"no"]
	"default",	// manage windowed controls for win/ie ["default","hide","iframe","none"]
	];


//reset behaviors
um.reset = [
	"yes",		// reset from document mouse click ["yes"|"no"]
	"yes",		// reset from window resize ["yes"|"no"]
	"yes",		// reset from text resize ["yes"|"no"]
	];


//horizontal continuation strip
um.hstrip = [
	"#397df3",		// background ["color"|"#hex"|"rgb()"|"image.gif"|"none"]
	"yes",		// copy navbar item margin-right to margin-bottom ["yes"|"no"]
	];
	
	
/***************************************************************\
 * MODULE SETTING
\***************************************************************/


//keyboard navigation
um.keys = [
	"38",		// up ["n"] ["38" = up arrow key]
	"39",		// right ["n"] ["39" = right arrow key]
	"40",		// down ["n"] ["40" = down arrow key]
	"37",		// left ["n"] ["37" = left arrow key]
	"123",		// hotkey ["n"] ["123" = F12]
	"none",		// hotkey modifier ["none"|"shiftKey"|"ctrlKey"|"altKey"]
	"27",		// escape ["n"|"none"] ["27" = Esc]
	"document.links[0]", // exit focus [expression]
	];


/***************************************************************\
 * NAVBAR DEFAULT STYLES
\***************************************************************/


//styles which apply to the navbar
um.navbar = [
	"0",		// nav -> menu x-offset (+-)["n" pixels]
	"0",		// nav -> menu y-offset (+-)["n" pixels]
	"7.5em",	// width ["em"|"px"|"pt"] (vertical navbar only - horizontal navbar items have "auto" width) ("%" doesn't work right)
	];


//styles which apply to each navbar item
um.items = [
	"0",		// margin between items ["n" pixels]
	"1",		// border size ["n" pixels] (single value only)
	"collapse",	// border collapse ["collapse"|"separate"] (only applies when margin = "0"]
	"#2f67c9",// border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",	// border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none" - set border size to "0" if you don't want borders)
	"#2f67c9",// hover/focus border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",	// hover/focus border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none")
	"#2f67c9",// visited border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",// visited border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none")
	"5",		// left/right padding ["n" pixels] (single value only)
	"5",		// top/bottom padding ["n" pixels] (single value only)
	"#397df3",		// background ["color"|"#hex"|"rgb()"|"image.gif"]
	"#2330a6",		// hover/focus background ["color"|"#hex"|"rgb()"|"image.gif"]
	"#397df3",		// visited background ["color"|"#hex"|"rgb()"|"image.gif"]
	"13px",		// font size ["em"|"px"|"pt"|"%"]
	"'Arial Unicode MS','Lucida Sans Unicode',arial,sans-serif",// font family ["font1,font2,font3"] (always end with a generic family)
	"bold",		// font weight ["normal"|"bold"]
	"none",		// text decoration ["none"|"underline"|"overline"|"line-through"]
	"left",		// text-align ["left"|"right"|"center"]
	"#ffffff",	// color ["color"|"#hex"|"rgb()"]
	"#ffffff",	// hover/focus color ["color"|"#hex"|"rgb()"]
	"#ffffff",	// visited color ["color"|"#hex"|"rgb()"]
	"normal",	// font-style ["normal"|"italic"|"oblique"]
	"normal",	// hover/focus font-style ["normal"|"italic"|"oblique"]
	"normal",	// visited font-style ["normal"|"italic"|"oblique"]
	"letter-spacing:0px !important;",// additional link CSS (careful!)
	"",		// additional hover/focus CSS (careful!)
	"",		// additional visited CSS (careful!)
	"",// menu indicator character/image ["x"|"image.gif"|"none"] (images are a non-tiled CSS background v-aligned in the middle of the region set by the clipping width)
	"",// menu indicator rollover character/image ["x"|"image.gif"|"none"] (must be same type)
	"7",		// clipping width of indicator image ["n" pixels] (image only - not used with character)
	"",		// alt text of indicator image ["x"] (image only)
	];


/***************************************************************\
 * MENU DEFAULT STYLES
\***************************************************************/


//styles which apply to each menu
um.menus = [
	"-7",		// menu -> menu x-offset (+-)["n" pixels] // "-16"
	"-12",		// menu -> menu y-offset (+-)["n" pixels]
	"1",		// border size ["n" pixels] (single value only) 
	"#2f67c9",// border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",	// border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none" - set border size to "0" if you don't want borders)
	"12em",	// width ["em"|"px"|"pt"]
	"2",		// padding ["n" pixels] (single value only) 
	"#397df3",	// background ["color"|"#hex"|"rgb()"|"image.gif"]
	"",		// additional menu CSS (careful!) (you can use a transition here but *not* a static filter)
	"#dddddd",// shadow background ["color"|"#hex"|"rgb()"|"image.gif"|"none"]
	"2px",		// shadow offset (+-) ["em"|"px"|"pt"|"%"|"0"]
	"filter:progid:DXImageTransform.Microsoft.Shadow(color=#bbddbb,direction=135,strength=2);",// additional shadow layer CSS (if you use a Shadow filter here, win/ie5.5+ will do that *instead* of default shadow)
	];


//styles which apply to each menu item
um.menuItems = [
	"0",		// margin around items ["n" pixels] (margins are like cellspacing)
	"1",		// border size ["n" pixels] (single value only)
	"collapse",	// border collapse ["collapse"|"separate"] (only applies when margin = "0")
	"#2f67c9",	// border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",	// border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none" - set border size to "0" if you don't want borders)
	"#2f67c9",		// hover/focus border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"dashed",	// hover/focus border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none")
	"#2f67c9",	// visited border colors ["color"|"#hex"|"rgb()"] (single, double or four values)
	"solid",	// visited border styles ["solid"|"double"|"dotted"|"dashed"|"groove"|"ridge"|"inset"|"outset"] (single, double or four values; don't use "none")
	"5",		// left/right padding ["n" pixels] (single value only) 
	"1",		// top/bottom padding ["n" pixels] (single value only)
	"transparent",	// background ["color"|"#hex"|"rgb()"|"image.gif"]
	"#2330a6",	// hover/focus background ["color"|"#hex"|"rgb()"|"image.gif"]
	"transparent",	// visited background ["color"|"#hex"|"rgb()"|"image.gif"]
	"13px",		// font size ["em"|"px"|"pt"|"%"]
	"'Arial Unicode MS','Lucida Sans Unicode',arial,sans-serif",// font family ["font1,font2,font3"] (always end with a generic family)
	"normal",	// font weight ["normal"|"bold"]
	"none",		// text decoration ["none"|"underline"|"overline"|"line-through"]
	"left",		// text-align ["left"|"right"|"center"]
	"#ffffff",		// color ["color"|"#hex"|"rgb()"]
	"#ffffff",		// hover/focus color ["color"|"#hex"|"rgb()"]
	"#ffffff",		// visited color ["color"|"#hex"|"rgb()"]
	"normal",	// font-style ["normal"|"italic"|"oblique"]
	"normal",	// hover/focus font-style ["normal"|"italic"|"oblique"]
	"normal",	// visited font-style ["normal"|"italic"|"oblique"]
	"",		// additional link CSS (careful!)
	"",		// additional hover/focus CSS (careful!)
	"",		// additional visited CSS (careful!)
	"",// submenu indicator character/image ["x"|"image.gif"|"none"] (images are a non-tiled CSS background v-aligned in the middle of the region set by the clipping width)
	"",// submenu indicator rollover character/image ["x"|"image.gif"|"none"] (must be the same type)
	"3",		// clipping width of indicator image ["n" pixels] (image only)
	"",		// alt text of indicator image ["x"] (image only)
	];


/***************************************************************\
 * MENU CLASSES
\***************************************************************/


//classes which apply to menus [optional]


/***************************************************************\
 * DYNAMIC MENUS
\***************************************************************/



	
	
/***************************************************************\
\***************************************************************/

