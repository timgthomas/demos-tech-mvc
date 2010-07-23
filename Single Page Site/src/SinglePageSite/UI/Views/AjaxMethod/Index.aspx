<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul>
		<li><a class="Page-Link" href="#FirstPage">First Page</a></li>
		<li><a class="Page-Link" href="#SecondPage">Second Page</a></li>
		<li><a class="Page-Link" href="#ThirdPage">Third Page</a></li>
	</ul>
	<span id="Loading">Loading...</span>
	<div class="Page" id="Page"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="Script" runat="server">
	<script type="text/javascript">
	//<![CDATA[

		$(function () {
			$('.Page-Link').click(pageSelected);
			$('#Loading').hide();
			$('.Page-Link:first').click();
		});

		function pageSelected(e) {
			$('#Loading').show();
			var action = $(this).attr('href').replace('#', '');
			$('#Page').load('<%= Url.Content("~/") %>AjaxMethod/' + action, function() { $('#Loading').hide(); });
			e.preventDefault();
		}

	//]]>
	</script>
</asp:Content>