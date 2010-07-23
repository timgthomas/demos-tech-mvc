<%@ Control Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="Result">
<p>The most recent request was of type &quot;<%= Model %>&quot;.</p>
	<a href="#" id="Link-GetRequest">Perform an asynchronous HTTP-GET request</a>
	<a href="#" id="Link-PostRequest">Perform an asynchronous HTTP-POST request</a>
	<script type="text/javascript">
	// <![CDATA[

		$(function() {
			$('#Link-GetRequest').click(performGetRequest);
			$('#Link-PostRequest').click(performPostRequest);
		});

		function performGetRequest(e) {
			performRequest('get');
			e.preventDefault();
		}

		function performPostRequest(e) {
			performRequest('post');
			e.preventDefault();
		}

		function performRequest(method) {
			$.ajax({
				type: method,
				success: function(result) {
					$('#Result').replaceWith(result);
				}
			});
		}

	// ]]>
	</script>
</div>