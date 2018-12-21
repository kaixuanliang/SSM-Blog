$(document).ready(function () {
    //alert("${APP_PATH}")
    $('#registerForm').reset;

    $('#submitCheckCode').click(function () {
        checkEmail();
        //发送邮箱验证码
        //debugger
        $.ajax({
            type:'POST',
            url:'./../sendEmailCode',
            data:{registerEmail:'123'},
            dataType:'json',
            success:function (data) {
                alert(data);
            }
        });
    });

});
//校验邮箱格式是否正确
function checkEmail() {
    //正确邮箱的正则表达式
    var trueEmail = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
    var email = $("#registerEmail").val();
    if(trueEmail.test(email)){
        $('#registerEmailDiv').children('span').eq(0).removeClass('glyphicon glyphicon-ok');
        $('#registerEmailDiv').children('span').eq(0).removeClass('glyphicon glyphicon-remove');
        $('#registerEmailDiv').children('span').eq(0).addClass('glyphicon glyphicon-ok');

    }else{
        $('#registerEmailDiv').children('span').eq(0).removeClass('glyphicon glyphicon-ok');
        $('#registerEmailDiv').children('span').eq(0).removeClass('glyphicon glyphicon-remove');
        $('#registerEmailDiv').children('span').eq(0).addClass('glyphicon glyphicon-remove');
        $('#registerForm').reset;
    }
}

