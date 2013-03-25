<html>
<head>
</head>
<body class="my-class">
# You are reading the ".properties" entry.
! The exclamation mark can also mark text as comments.
website = http://en.wikipedia.org/
language = English
# The backslash below tells the application to continue reading
# the value onto the next line.
message = Welcome to \
          Wikipedia!
# Add spaces to the key
key\ with\ spaces = This is the value that could be looked up with the key "key with spaces".
# Unicode
tab : \u0009
Variable $Var
Variable in quote "$Var"
Delimited variable {$Var}
<% loop $Var %>
    Variable $Var
    <% if $Var %>

    <% end_if %>
<% end_loop %>
<% base_tag %>
<% include MetaTags %>
    <% if $Var %>
    <% end_if %>
$Var
<% if $Var %>
<script>
	window.FBUserStatus = false;
	window.fbAsyncInit = function() {
		FB.init({
			appId      : '$Top.FacebookAppId',
			status     : true,
			cookie     : true,
			xfbml      : true,
			oauth      : true
		});

		FB.Event.subscribe('auth.login', function() {
			if ($("#carousel").length == 0)
				window.location.reload();
		});

		FB.getLoginStatus(function(response) {
			window.FBUserStatus = response;
			if (response.status === 'connected') {
				$('#carousel, #arrow').animate({opacity:1},2000);

				var uid = response.authResponse.userID;
				var accessToken = response.authResponse.accessToken;
			}
			else {
				if ($("#carousel").length > 0)
					window.location.href = $("#carousel").data("url");
				// the user isn't logged in to Facebook.
			}
		});
	};

    // Load the SDK Asynchronously
    (function(d){
	    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
	    if (d.getElementById(id)) {return;}
	    js = d.createElement('script'); js.id = id; js.async = true;
	    js.src = "//connect.facebook.net/sv_SE/all.js";
	    ref.parentNode.insertBefore(js, ref);
    }(document));
</script>
</body>
</html>