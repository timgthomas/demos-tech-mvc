<%@ Control Inherits="System.Web.Mvc.ViewUserControl<string>" %>

<div id="Result">
	<p>The most recent request was of type &quot;<%= Model %>&quot; and was made at <%= DateTime.Now.ToString() %>.</p>
	<ul id="Requests">
		<li><a href="#" id="Link-GetRequest">HTTP-GET</a></li>
		<li><a href="#" id="Link-PostRequest">HTTP-POST</a></li>
	</ul>
	<script type="text/javascript">
	// <![CDATA[

		$(function() {
			$('#Link-GetRequest').die('click').live('click', performGetRequest);
			$('#Link-PostRequest').die('click').live('click', performPostRequest);
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
				url: '<%= Url.Action("SecondPage") %>',
				type: method,
				success: function(result) {
					$('#Result').replaceWith(result);
				}
			});
		}

	// ]]>
	</script>
</div>