$("#btnSub").click((e) => {
	let text = e.target.textContent;
	if(text == "구독하기"){
		let companyId = $("#companyId").val();
   		subscribToCompany(companyId);
	}else if(text == "구독취소"){
		subscribCancelToCompany($("#btnSub").val());
	}


});


function subscribToCompany(companyId) {
    $.ajax("/subscribe/" + companyId, {
        type: "GET",
        dataType: "JSON"
    }).done((res) => {
        if (res.code == 1) {
            sendmessageToCompany(companyId);
            $("#btnSub").val(res.data);
            $("#btnSub").text("구독취소");
            //$(".btn-update").load(location.href+" .btn-update");
			//location.reload();
            alert(res.message);
        } else {
            alert(res.message);
        }
    });
}

function subscribCancelToCompany(subscribeId) {
    $.ajax("/subscribe/" + subscribeId, {
        type: "DELETE",
        dataType: "JSON"
    }).done((res) => {
        if (res.code == 1) {
         $("#btnSub").val($("#companyId").val());
      	 $("#btnSub").text("구독하기");
		//	location.reload();
            alert(res.message);
        } else {
            alert(res.message);
        }
    });
}