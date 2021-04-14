function openCoops(){
	var name = $('#index_name').val();
    var phone = $('#index_phone').val();
    var email = $('#index_email').val();
    var content = $('#index_content').val();
    if(name === '' || phone === '' || email === '' || content === ''){
		alert('您的信息没有填写完整!');
		return;
    }
	$.ajax({
        type: "post",
        url: "coops",
        data: {"name":name, "phone":phone, "email":email, "content":content},
        dataType: "json",
        success: function (response) {
			if(response.code == 1){
				$('#index_name').val("")
				$('#index_phone').val("")
				$('#index_email').val("")
				$('#index_content').val("")
				alert('提交成功')
			} else {
				$('#index_name').val("")
				$('#index_phone').val("")
				$('#index_email').val("")
				$('#index_content').val("")
				alert('提交失败')
			}
        }
    });
}
$(document).ready(function(){
	$.ajax({
        type: "get",
        url: "notices",
        async:false,
        success: function (response) {
        	response = JSON.parse(response);
			if(response.code === 1){
				var data = response.data;
				for(i = 0; i < data.length; i++){
					data[i].create_time=timestampToDate(data[i].create_time/1000);
				}
				loadTable(data);
				bindClick();
			}
        }
    });
});

function loadTable(data){
	// bootstrap table
	$('#table').bootstrapTable({
		data:data,
	    pagination: true,
	    search: true,
	    columns: [{
	      field: 'title',
	      title: '标题'
	    }, {
	      field: 'create_time',
	      title: '时间'
	    }]
	});
}

function bindClick(){
	$('#table').on('click-cell.bs.table', function (e,field, value,row,$element) {
	   console.log(row.id);
	   window.location.href='notice/' + row.id;
	});
}



// 时间戳转换工具
function timestampToDate(timestamp) {
    var date = new Date(timestamp * 1000);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '-';
    M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    D = date.getDate() + ' ';
    //h = date.getHours() + ':';
    //m = date.getMinutes() + ':';
    //s = date.getSeconds();
    return Y+M+D//+h+m+s;
}
