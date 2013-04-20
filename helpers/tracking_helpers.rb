module TrackingHelpers
	def google_analytics(tracking_id)
		haml_tag('script', type: 'text/javascript') do
			haml_concat <<EOF
var _gaq = _gaq || [];
_gaq.push(['_setAccount', '#{tracking_id}']);
_gaq.push(['_trackPageview']);

(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
EOF
		end
	end
end
