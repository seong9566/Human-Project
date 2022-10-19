$("#select_category").change(()=>{	
   groupForCategory($('#select_category').val());
})

function groupForCategory(id){

	localStorage.setItem("number", id);
	location.href="/main/"+id;	
}

function onLoad(){
	let number = localStorage.getItem("number");
	
	// 옵션 체인지 하기
	const el = document.getElementById('select_category');  //select box
	const len = el.options.length; //select box의 option 갯수
	const str = number; //입력 받은 value 값
	//select box의 option 갯수만큼 for문 돌림
	for (let i=0; i<len; i++){  
		//select box의 option value가 입력 받은 value의 값과 일치할 경우 selected
		if(el.options[i].value == str){
			el.options[i].selected = true;
		}
	}
}

onLoad();
