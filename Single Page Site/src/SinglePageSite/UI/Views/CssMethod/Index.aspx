<asp:Content ContentPlaceHolderID="Content" runat="server">
	<ul id="Subnavigation">
		<li><a class="Page-Link Active" href="#FirstPage">First Page</a></li>
		<li><a class="Page-Link" href="#SecondPage">2) Asynchronous Communication</a></li>
		<li><a class="Page-Link" href="#ThirdPage">Third Page</a></li>
		<li><a class="Page-Link" href="#FourthPage">4) Flash</a></li>
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
		<div class="FlashPage" id="FourthPage"></div>
	</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="Script" runat="server">
	<script type="text/javascript">
	//<![CDATA[

		$(function () {
			swfobject.embedSWF('<%= Url.Content("~/Content/Stopwatch.swf") %>', 'FourthPage', '580', '32', '9.0.0', '', '', '', { class: 'FlashPage FlashPage-Hidden' });
			$('.Page-Link').click(pageSelected);
			$('.Page').hide();
			hideFlash();
			$('.Page-Link:first').click();
		});

		function pageSelected(e) {
			var page = $(this).attr('href');
			var pageName = page.replace('#', '');

			if ($(page).hasClass('FlashPage')) {
				$('.Page').hide();
				showFlash();
			} else {
				$('.Page').not(page).hide();
				$(page).show();
				hideFlash();
			}

			$('.Page-Link').removeClass('Active');
			$(this).addClass('Active');
			e.preventDefault();
		}

		function hideFlash() {
			$('.FlashPage').addClass('FlashPage-Hidden');
		}
		
		function showFlash() {
			$('.FlashPage').removeClass('FlashPage-Hidden');
		}

	//]]>
	</script>
</asp:Content>