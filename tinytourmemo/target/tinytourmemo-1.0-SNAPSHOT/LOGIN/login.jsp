<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.tinytourmemo.entity.USER" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<meta http-equiv="nocache" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="../LOGIN/resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="../LOGIN/resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="../LOGIN/data/styles.css" type="text/css" rel="stylesheet" />
<link href="../LOGIN/files/login/styles.css" type="text/css"
	rel="stylesheet" />
<link href="../LOGIN/resources/css/supersized.css" rel="stylesheet">
<script src="../LOGIN/resources/scripts/jquery-1.7.1.min.js"></script>
<script src="../LOGIN/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
<script src="../LOGIN/resources/scripts/prototypePre.js"></script>
<script src="../LOGIN/data/document.js"></script>
<script src="../LOGIN/resources/scripts/prototypePost.js"></script>
<script src="../LOGIN/files/login/data.js"></script>
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
		<div id="u0" class="ax_default flow_shape">
			<div id="u0_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u1" class="text" style="display: none; visibility: hidden">
				<p>
					<span></span>
				</p>
			</div>
		</div>
		<form action="../controller/LoginHandler" method="post">
			<!-- email_textbox (文本框) -->
			<div id="u2" class="ax_default text_field">
				<input id="u2_input" name="email" placeholder="Email"
					value="<jsp:getProperty name="user" property="email"/>">
			</div>

			<!-- Unnamed (矩形) -->
			<div id="u3" class="ax_default flow_shape">
				<div id="u3_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u4" class="text" style="display: none; visibility: hidden">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- pwd_textbox (文本框) -->
			<div id="u5" class="ax_default text_field">
				<input id="u5_input" type="password" name="password"
					placeholder="Password"
					value="<jsp:getProperty name="user" property="password"/>" />
			</div>

			<!-- Unnamed (提交按钮) -->
			<div id="u6" class="ax_default html_button">
				<input id="u6_input" type="submit" value="Sign me in" />
			</div>
		</form>

		<!-- Unnamed (矩形) -->
		<div id="u7" class="ax_default label">
			<div id="u7_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u8" class="text">
				<p>
					<span>Login</span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u9" class="ax_default label">
			<div id="u9_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u10" class="text" style="color: red; visibility: visible">
				<p>
					<span><%= request.getAttribute("error")==null?"":request.getAttribute("error")%></span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u11" class="ax_default label">
			<div id="u11_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u12" class="text">
				<p>
					<span>Don't have an account? </span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u13" class="ax_default label">
			<div id="u13_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u14" class="text">
				<a href="../LOGIN/register.jsp" style="text-decoration: none;">
					<span>Sign up</span>
				</a>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u15" class="ax_default label">
			<div id="u15_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u16" class="text">
				<p>
					<span>By creating an account you agree to these terms</span>
				</p>
			</div>
		</div>

		<!-- Unnamed (矩形) -->
		<div id="u17" class="ax_default label">
			<div id="u17_div" class=""></div>
			<!-- Unnamed () -->
			<div id="u18" class="text">
				<p>
					<span>Privacy policy</span>
				</p>
			</div>
		</div>
	</div>

</body>
</html>