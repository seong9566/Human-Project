	
	function deleteById(resumesId) {
		$.ajax("/personalLike/" + resumesId + "/likes",{
			type: "DELETE",
			dataType: "json",
			
		}).done((res) => {
			if (res.code == 1) {
				location.href="/recommend"
			} else {
				alert("좋아요 추가 실패");
				
			}
		});
	}