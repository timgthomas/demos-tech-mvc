<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul id="Subnavigation">
		<span id="Loading">Loading...</span>
		<li><a class="Page-Link" href="#FirstPage">First Page</a></li>
		<li><a class="Page-Link" href="#SecondPage">Second Page</a></li>
		<li><a class="Page-Link" href="#ThirdPage">Third Page</a></li>
	</ul>
	<div id="Content">
		<div class="Page" id="Page"></div>
	</div>
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
			$('.Page-Link').removeClass('Active');
			$(this).addClass('Active');
			var action = $(this).attr('href');
			$('#Page').load('<%= Url.Content("~/") %>AjaxMethod/' + action.replace('#', ''), function () { $(action).show(); $('#Loading').hide(); });
			e.preventDefault();
		}

	//]]>
	</script>
</asp:Content>