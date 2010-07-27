<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul id="Subnavigation">
		<li><a class="Page-Link Active" href="#FirstPage">First Page</a></li>
		<li><a class="Page-Link" href="#SecondPage">Second Page</a></li>
		<li><a class="Page-Link" href="#ThirdPage">Third Page</a></li>
	</ul>
	<div id="Content">
		<div class="Page" id="FirstPage">
			<% Html.RenderAction("FirstPage"); %>
		</div>
		<div class="Page" id="SecondPage">
			<% Html.RenderAction("SecondPage"); %>
		</div>
		<div class="Page" id="ThirdPage">
			<% Html.RenderAction("ThirdPage"); %>
		</div>
	</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="Script" runat="server">
	<script type="text/javascript">
	//<![CDATA[

		$(function() {
			$('.Page-Link').click(pageSelected);
			$('.Page').hide();
			$('.Page-Link:first').click();
		});

		function pageSelected(e) {
			$('.Page').hide();
			$('.Page-Link').removeClass('Active');
			$(this).addClass('Active');
			$($(this).attr('href')).show();
			e.preventDefault();
		}

	//]]>
	</script>
</asp:Content>