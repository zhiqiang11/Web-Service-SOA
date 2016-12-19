<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.polotin.entity.USER" scope="session" />
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<meta http-equiv="nocache" content="no-cache"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="../LOGIN/resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="../LOGIN/resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="../LOGIN/data/styles.css" type="text/css" rel="stylesheet" />
<link href="../LOGIN/resources/css/supersized.css" rel="stylesheet">
<link href="../LOGIN/files/register/styles.css" type="text/css" rel="stylesheet" />
<script src="../LOGIN/resources/scripts/jquery-1.7.1.min.js"></script>
<script src="../LOGIN/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
<script src="../LOGIN/resources/scripts/prototypePre.js"></script>
<script src="../LOGIN/data/document.js"></script>
<script src="../LOGIN/resources/scripts/prototypePost.js"></script>
<script src="../LOGIN/files/register/data.js"></script>
<script src="../LOGIN/resources/scripts/supersized.3.2.7.min.js"></script>
<script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return '../LOGIN/resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return '../LOGIN/resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return '../LOGIN/resources/reload.html'; };
    </script>
    <script type="text/javascript">
			
			jQuery(function($){
				
				$.supersized({
				
					// Functionality
					slideshow               :   1,			// Slideshow on/off
					autoplay				:	1,			// Slideshow starts playing automatically
					start_slide             :   1,			// Start slide (0 is random)
					stop_loop				:	0,			// Pauses slideshow on last slide
					random					: 	0,			// Randomize slide order (Ignores start slide)
					slide_interval          :   3000,		// Length between transitions
					transition              :   1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
					transition_speed		:	1000,		// Speed of transition
					new_window				:	1,			// Image links open in new window/tab
					pause_hover             :   0,			// Pause slideshow on hover
					keyboard_nav            :   1,			// Keyboard navigation on/off
					performance				:	1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
					image_protect			:	1,			// Disables image dragging and right click with Javascript
															   
					// Size & Position						   
					min_width		        :   0,			// Min width allowed (in pixels)
					min_height		        :   0,			// Min height allowed (in pixels)
					vertical_center         :   1,			// Vertically center background
					horizontal_center       :   1,			// Horizontally center background
					fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
					fit_portrait         	:   1,			// Portrait images will not exceed browser height
					fit_landscape			:   0,			// Landscape images will not exceed browser width
															   
					// Components							
					slide_links				:	'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
					thumb_links				:	1,			// Individual thumb links for each slide
					thumbnail_navigation    :   0,			// Thumbnail navigation
					slides 					:  	[			// Slideshow Images
															{image : '../LOGIN/images/backgrounds/1.png'},
															{image : '../LOGIN/images/backgrounds/2.png'},
															{image : '../LOGIN/images/backgrounds/3.png'}
												],
												
					// Theme Options			   
					progress_bar			:	1,			// Timer for each slide							
					mouse_scrub				:	0
					
				});
		    });
		    
		</script>
</head>
<body>
	<div id="base" class="">
		<!-- Unnamed (矩形) -->
		<div id="u19" class="ax_default flow_shape">
			<div id="u19_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u20" class="text" style="display: none; visibility: hidden">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u21" class="ax_default label">
			<div id="u21_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u22" class="text">
				<p>
					<span>Sign up</span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u23" class="ax_default flow_shape">
			<div id="u23_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u24" class="text" style="display: none; visibility: hidden">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u26" class="ax_default flow_shape">
			<div id="u26_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u27" class="text" style="display: none; visibility: hidden">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<form action="../servlet/RegisterHandler" method="post">
			<!-- email_textbox (文本框) -->
			<div id="u25" class="ax_default text_field">
				<input id="u25_input" type="text" name="email"
					value="<jsp:getProperty name="user" property="email"/>" />
			</div>

			<!-- pwd_textbox (文本框) -->
			<div id="u28" class="ax_default text_field">
				<input id="u28_input" type="password" name="password"
					value="<jsp:getProperty name="user" property="password"/>" />
			</div>

			<!-- Unnamed (文本框) -->
			<div id="u32" class="ax_default text_field">
				<input id="u32_input" type="password" name="password1"
					value="<jsp:getProperty name="user" property="password1"/>" />
			</div>

			<!-- Unnamed (提交按钮) -->
			<div id="u29" class="ax_default html_button">
				<input id="u29_input" type="submit" value="Sign up" />
			</div>
		</form>

		<!-- Unnamed (矩形) -->
		<div id="u30" class="ax_default label">
			<div id="u30_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u31" class="text" style="display: none; visibility: hidden">
				<p>
					<span></span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u33" class="ax_default label">
			<div id="u33_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u34" class="text">
				<p>
					<span>Already have an account? </span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u35" class="ax_default label">
			<div id="u35_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u36" class="text">
				<p>
					<a href="../LOGIN/login.jsp" style="text-decoration: none;">
					<span>Sign in</span>
					</a>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u37" class="ax_default label">
			<div id="u37_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u38" class="text">
				<p>
					<span>By creating an account you agree to these terms</span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u39" class="ax_default label">
			<div id="u39_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u40" class="text">
				<p>
					<span>Privacy policy</span>
				</p>
			</div>
		</div>
	</div>
</body>
</html>