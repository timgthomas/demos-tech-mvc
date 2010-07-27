<%@ Control Inherits="System.Web.Mvc.ViewUserControl<string>" %>

<div id="Result">
	<p>The most recent request was of type &quot;<%= Model %>&quot; and was made at <%= DateTime.Now.ToString() %>.</p>
	<a href="#" id="Link-GetRequest">Perform an asynchronous HTTP-GET request</a>
	<a href="#" id="Link-PostRequest">Perform an asynchronous HTTP-POST request</a>
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