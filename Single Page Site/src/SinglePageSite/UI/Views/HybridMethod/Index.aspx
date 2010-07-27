<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul>
		<li><a class="Page-Link" href="#FirstPage">First Page</a></li>
		<li><a class="Page-Link" href="#SecondPage">Second Page</a></li>
		<li><a class="Page-Link" href="#ThirdPage">Third Page</a></li>
	</ul>
	<span id="Loading">Loading...</span>
	<div class="Page" id="FirstPage"></div>
	<div class="Page" id="SecondPage"></div>
	<div class="Page" id="ThirdPage"></div>
</asp:Content>

<asp:Content ContentPlaceHolderID="Script" runat="server">
	<script type="text/javascript">
	//<![CDATA[

		$(function() {
			$('.Page-Link').click(pageSelected);
			$('#Loading').hide();
			$('.Page-Link:first').click();
		});

		function pageSelected(e) {
			var action = $(this).attr('href');
			var pageExists = $(action).html() != '';

			$('.Page').hide();
			if(pageExists) {
				$(action).show();
			} else {
				$('#Loading').show();
				$(action).load('<%= Url.Content("~/") %>HybridMethod/' + action.replace('#', ''), function () { $(action).show(); $('#Loading').hide(); });
			}

			e.preventDefault();
		}

	//]]>
	</script>
</asp:Content>