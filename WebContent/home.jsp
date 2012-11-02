<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="org.campustalk.entity.CampusTalkUsers"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CampusTalk</title>
<link rel="icon" href="assets/favicon.ico" sizes="32x32">
<link rel="shortcut icon" href="assets/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-responsive.min.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="css/avgrund.css"
	media="all" />
<link rel="stylesheet/less" type="text/css" href="less/style.less"
	media="all" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/less-1.3.0.min.js"></script>
<script type="text/javascript" src="js/jquery.avgrund.js"></script>
<script type="text/javascript">
	$(function() {
		less.env = "development";
		less.watch();

		//Iterate over each comment-box and hide comments if they exist.
		$.each($(".feed-comments"), function(i) {
			var currfeed = $(this);
			if (currfeed.find("li").length > 0)
				currfeed.parent().find(".feed-comment-box").hide();
			else
				currfeed.parent().find(".feed-comment-reveal").hide();
			currfeed.hide();
		});
	});
	var objMyData = [];
	objMyData=${requestScope.userJSon}
</script>
</head>
<body class="page-wrap">
	<div class="container header">
		<img src="assets/logo_small.png" class="campustalk-logo" />
		<div class="search-block input-append">
			<input type="text" placeholder="Search..." class="txt-flat" />
			<button class="btn btn-flat">
				<i class="icon-search"></i>
			</button>
		</div>
	</div>
	<div class="account-tray">
		<img src="${requestScope.User.pictureUrl}" class="account-user-img" />
		<div class="profile-block">
			<div class="profile-details">
				<img src="${requestScope.User.pictureUrl}" class="profile-img" />
				<table class="profile-options">
					<tr>
						<td><label class="user-title"> ${requestScope.User.firstname}  ${requestScope.User.lastname}
						</label></td>
					</tr>
					<tr>
						<td><label class="user-group-title">MSc. I.T. 2011</label></td>
					</tr>
					<tr>
						<td style="padding-bottom: 15px;"><a href="#"
							id="showMessages" class="user-option">Messages</a></td>
					</tr>
					<tr>
						<td style="padding-bottom: 15px;"><a href="#" id="showEvents"
							class="user-option">Events</a></td>
					</tr>
				</table>
			</div>
			<div class="profile-actions">
				<button id="btnLogout" class="btn btn-flat btn-blue">Logout</button>
				<button id="btnSettings" class="btn btn-flat btn-blue">Settings</button>
			</div>
		</div>
	</div>
	<div class="container feeds-block">
		<div class="post-card">
			<div class="post-user-bar">
				<img src="${requestScope.User.pictureUrl}" class="post-user-img" />
				<div class="post-content">
					<textarea id="postBox" rows="1" cols="30"
						placeholder="Share something..." class="txt-flat"></textarea>
					<select class="span2 sel-flat" id="selectPostType">
						<option value="P">Private</option>
						<option value="A">Public</option>
					</select>
					<button class="btn btn-flat" id="btnPost">Post</button>
				</div>
			</div>
		</div>
		<div class="feeds-list">
			<div class="feed-card">
				<div class="feed-user-bar">
					<a href="#"><img src="assets/user_thumb.jpg"
						class="feed-user-img" /></a> <span class="feed-user-title"><a
						href="#">Kushal Pandya </a></span>
					<div class="dropdown drp-flat feed-card-menu">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
							class="icon-tasks"></i></a>
						<ul class="dropdown-menu pull-right" role="menu"
							aria-labelledby="dropdownMenu">
							<li><a tabindex="-1" href="#">Edit</a></li>
							<li><a tabindex="-1" href="#">Delete</a></li>
							<li><a tabindex="-1" href="#">Report as spam/abuse</a></li>
						</ul>
					</div>
				</div>
				<div class="feed-content">
					<p>Pellentesque habitant morbi tristique senectus et netus et
						malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
						vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
						amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
						placerat eleifend leo.</p>
					<div class="feed-comments-block">
						<a href="#" class="feed-comment-reveal" rel="full">4 comments.
							&dArr;</a>
						<ul class="feed-comments">
							<li><img src="assets/user_thumb.jpg" class="post-user-img"
								width="30" />Lorem ipsum dolor sit amet, consectetuer
								adipiscing elit.<a class="comment-action" href="#"><i
									class="icon-remove" title="Delete"></i></a></li>
							<li><img src="assets/user_thumb.jpg" class="post-user-img"
								width="30" />Aliquam tincidunt mauris eu risus.<a
								class="comment-action" href="#"><i class="icon-warning-sign"
									title="Report Abuse"></i></a></li>
							<li><img src="assets/user_thumb.jpg" class="post-user-img"
								width="30" />Morbi in sem quis dui placerat ornare.
								Pellentesque odio nisi, euismod in, pharetra a, ultricies in,
								diam. Sed arcu. Cras consequat. Morbi in sem quis dui placerat
								ornare. Pellentesque odio nisi, euismod in, pharetra a,
								ultricies in, diam. Sed arcu. Cras consequat.<a
								class="comment-action" href="#"><i class="icon-warning-sign"
									title="Report Abuse"></i></a></li>
							<li><img src="assets/user_thumb.jpg" class="post-user-img"
								width="30" />Lorem ipsum dolor sit amet, consectetuer
								adipiscing elit.<a class="comment-action" href="#"><i
									class="icon-warning-sign" title="Report Abuse"></i></a></li>
						</ul>
						<div class="feed-comment-box">
							<img src="assets/user_thumb.jpg" class="post-user-img" width="30" />
							<textarea class="txt-flat" placeholder="Leave comment..."></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="feed-card">
				<div class="feed-user-bar">
					<a href="#"><img src="assets/user_thumb.jpg"
						class="feed-user-img" /></a> <span class="feed-user-title"><a
						href="#">Kushal Pandya</a></span>
					<div class="dropdown drp-flat feed-card-menu">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
							class="icon-tasks"></i></a>
						<ul class="dropdown-menu pull-right" role="menu"
							aria-labelledby="dropdownMenu">
							<li><a tabindex="-1" href="#">Edit</a></li>
							<li><a tabindex="-1" href="#">Delete</a></li>
							<li><a tabindex="-1" href="#">Report as spam/abuse</a></li>
						</ul>
					</div>
				</div>
				<div class="feed-content">
					<p>Pellentesque habitant morbi tristique senectus et netus et
						malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
						vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
						amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
						placerat eleifend leo.</p>
					<div class="feed-comments-block">
						<div class="feed-comment-box">
							<img src="assets/user_thumb.jpg" class="post-user-img" width="30" />
							<textarea class="txt-flat" placeholder="Leave comment..."></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="avgmodal">
		<p>Pellentesque habitant morbi tristique senectus et netus et
			malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat
			vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
			amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
			placerat eleifend leo.</p>
	</div>
	<a id='popupLink' href='' style='display:none'>Show</a>
	<script type="text/x-handlebars-template" id='tmpltPostList'>
 		{{#if posts}}
			{{#each posts}}
					<div class="feed-card">
						<div class="feed-user-bar">
							<a href="#"><img src="{{user.pictureUrl}}"
								class="feed-user-img" /></a> <span class="feed-user-title"><a
								href="{{user.url}}">{{user.firstname}} {{user.lastname}}</a></span>
					<div class="dropdown drp-flat feed-card-menu">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle"><i
							class="icon-tasks"></i></a>
						<ul class="dropdown-menu pull-right" role="menu"
							aria-labelledby="dropdownMenu">
							{{#if user.owner}}
							<li><a tabindex="-1" href="#">Edit</a></li>
							<li><a tabindex="-1" href="#">Delete</a></li>
							{{else}}
							<li><a tabindex="-1" href="#">Report as spam/abuse</a></li>
							{{/if}}
						</ul>
					</div>
				</div>
				<div class="feed-content">
					<p>{{postdata}}</p>
					<div class="feed-comments-block">
						<a href="#" class="feed-comment-reveal" rel="full">{{nocommrnts}} comments.
							&dArr;</a>
						<ul class="feed-comments">
							
						</ul>
						<div class="feed-comment-box">
							<img src="{{myPictureUrl}}" class="post-user-img" width="30" />
							<textarea class="txt-flat" placeholder="Leave comment..."></textarea>
						</div>
					</div>
				</div>
			</div>
	</script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/handlebars.js"></script>
	<script type="text/javascript" src="js/home.js"></script>
	
	
</body>
</html>