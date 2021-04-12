/**
 *  rk 定义的各种方法
 */
function subscription(){
	var email = $('#index_newsletter').val();
	if(email === ''){
		alert('请输入电子邮件地址!');
		return;
    }
	$.ajax({
        type: "post",
        url: "subscription",
        data: {"email":email},
        dataType: "json",
        success: function (response) {
			if(response.code == 1){
				alert('订阅成功')
				$('#index_newsletter').val("")
			} else {
				$('#index_newsletter').val("")
				alert('订阅失败')
			}
        }
    });
}

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