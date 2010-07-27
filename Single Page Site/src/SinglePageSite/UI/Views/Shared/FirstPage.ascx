<p>This is the first page.</p>
<p id="Stopwatch">00:00.0</p>
<script type="text/javascript">
	// <![CDATA[

	var elapsedTime = 0;

	$(function () {
		setInterval("tick()", 100);
	});

	function tick() {
		elapsedTime++;

		var minutes = Math.floor(elapsedTime / 600);
		var seconds = Math.floor(elapsedTime / 10) - minutes * 60;
		var tenthSeconds = elapsedTime - minutes * 600 - seconds * 10;

		var time = padLeft(minutes, 2, '0') + ':' + padLeft(seconds, 2, '0') + '.' + tenthSeconds;

		$('#Stopwatch').html(time);
	}

	function padLeft(input, size, ch) {
		input += "";
		while (input.length < size) input = ch + input;
		return input;
	}

	// ]]>
	</script>