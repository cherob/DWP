$( document ).ready(function() {

	$(".word-list .word").click(function(event) {
		console.log($(event.currentTarget).attr("id"));
		loadFile($(event.currentTarget).attr("id"));
	})

	function loadFile(word) {
		var url = "js/wort_" + word + ".json";
		$.ajax({
			dataType: "json",
		 	url: url,
		 	success: function() {
				console.log("success");
		 	},
		 	error:function (request, status, error) {
     			console.log(error);
    		}

		});
	}
	function success() {
	}
});
