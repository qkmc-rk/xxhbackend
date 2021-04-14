/**
 * 
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