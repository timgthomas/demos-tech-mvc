<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul>
		<li><a class="Page-Link" href="#Page-1">First Page</a></li>
		<li><a class="Page-Link" href="#Page-2">Second Page</a></li>
		<li><a class="Page-Link" href="#Page-3">Third Page</a></li>
	</ul>
	<div class="Page" id="Page-1">
		<% Html.RenderAction("FirstPage"); %>
	</div>
	<div class="Page" id="Page-2">
		<% Html.RenderAction("SecondPage"); %>
	</div>
	<div class="Page" id="Page-3">
		<% Html.RenderAction("ThirdPage"); %>
	</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="Script" runat="server">
	<script type="text/javascript">
	//<![CDATA[

		$(function () {
			$('.Page-Link').click(pageSelected);
			$('.Page').hide();
		});

		function pageSelected(e) {
			$('.Page').hide();
			$($(this).attr('href')).show();
			e.preventDefault();
		}

	//]]>
	</script>
</asp:Content>