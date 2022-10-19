$("#select_category").change(()=>{	
   groupForCategory($('#select_category').val());
})

function groupForCategory(id){
	location.href="/main/"+id;
	$.ajax("/main/"+ id ,{
		type:"get"
	}).done((res)=>{		
		if(res.code == 1){		
			location.href="/main/"+id;
		}
	});
}