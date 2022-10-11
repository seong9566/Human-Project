var stompClient = null;


function connect() {
    var socket = new SockJS('/company_end_point');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/test', function (test) {
            showTest(JSON.parse(test.body).content);
        });
    });
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function showTest(value){
	console.log(value);
}


