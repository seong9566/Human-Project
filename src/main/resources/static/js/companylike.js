$(function () {
    $('#btnlike').click(function () {
        if ($(this).html() == '좋아요') {

            $(this).html('좋아요취소');
            insertLike();
        }
        else {

            $(this).html('좋아요');
            deleteLike();
        }
    });
});

function deleteLike() {
    let companyid = $("#companyId").val();
    $.ajax("/companyLike/" + companyid + "/likes", {
        type: "DELETE",
        dataType: "json",
        headers: { // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8"
        }
    }).done((res) => {
        if (res.code == 1) {

        } else {
            alert("좋아요 추가 실패");
            return;
        }
    });
}
function insertLike() {
    let companyid = $("#companyId").val();
    console.log(companyid);
    sendmessageToCompany(companyid);
    $.ajax("/companyLike/" + companyid + "/likes", {
        type: "POST",
        dataType: "json",
        headers: { // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8"
        }
    }).done((res) => {
        if (res.code == 1) {

        } else {
            alert("좋아요 추가 실패");
            return;
        }
    });
}