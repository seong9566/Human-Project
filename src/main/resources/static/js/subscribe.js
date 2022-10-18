$("#btnSub").click(() => {
    let companyId = $("#companyId").val();
    subscribToCompany(companyId);

});

$("#btnSubCancel").click(() => {
    let subscribeId = $("#btnSubCancel").val();
    subscribCancelToCompany(subscribeId)
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
            $("#btnSub").attr("id", "btnSubCancel");
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
            $("#btnSubCancel").val('');
            $("#btnSubCancel").text("구독하기");
            $("#btnSubCancel").attr("id", "btnSub");
            alert(res.message);
        } else {
            alert(res.message);
        }
    });
}