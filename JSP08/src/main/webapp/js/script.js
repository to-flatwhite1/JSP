window.onload=function(){
	let select=document.getElementsByTagName("select");
	let hid=document.getElementsByTagName("input");
	for(let i=0;i<select.length; i++){
		select[i].addEventListener("change",function(){
			let price1=select[0].value*1000000;
			let price2=select[1].value*1500000;
			let result=price1+price2;
			console.log("첫번째:"+price1);
			console.log("두번째:"+price2);
			console.log("총액 : "+result);
			let last=document.getElementsByTagName("h1")[1];
			last.innerHTML=result.toLocaleString()+"원";
			hid[0].value=select[0].value;
			hid[1].value=select[1].value;
			// 숫자 천 단위로 콤마(,) 찍기
			
			
			
		})
		}
	
	}
//window: 브라우저의 동작을 관할하는 객체
//window.onload : 여기 들어간 함수는 
//					화면을 다 그린 뒤 실행 됨