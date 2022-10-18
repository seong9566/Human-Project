$("#btnSub").click((e) => {
    let companyId = $("#companyId").val();
    if (e.target.textContent === '구독하기') {
        $("#btnSub").text('구독취소');
        subscribToCompany(companyId);
    }
});


function subscribToCompany(companyId) {
    $.ajax("/subscribe/" + companyId, {
        type: "GET",
        dataType: "JSON"
    }).done((res) => {
        if (res.code == 1) {
            alert(res.message);
        } else {
            alert(res.message);
        }
    });
}