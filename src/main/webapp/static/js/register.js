$(document).ready(function() {
    formCheck($('#registerForm'),'/SSM-Blog/checkEmail','该邮箱已被注册，请登录');
    sendEmailCode($('#submitCheckCode'));
    userRegister($('#registerButton'));
});

//bootstrapValidate前端校验
function formCheck(fm,url,message) {
     fm
        .bootstrapValidator({
            message: '输入无效',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                email: {
                    validators: {
                        notEmpty: {
                            message: '邮箱不能为空'
                        },
                        emailAddress: {
                            message: '邮箱地址格式错误'
                        },
                        remote:{
                            message:message,
                            url:url,
                            data:{
                                email:$("#registerEmail").val()
                            }
                        },
                        regexp: {
                            regexp: /^[\w._]+@(qq)\.com(\r\n|\r|\n)?$/,
                            message: '注册邮箱必须是QQ邮箱'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                },
                repeatPassword:{
                    validators:{
                        notEmpty:{
                            message: '密码不能为空'
                        },
                        identical:{
                            field:'password',
                            message:'两次输入的密码不一致'
                        }
                    }
                },
                checkCode:{
                    validators:{
                        notEmpty:{
                            message: '验证码不能为空'
                        },
                        remote:{
                            message:'验证码错误，请重新输入',
                            url:'/SSM-Blog/verifyCheckCode',
                            data:{
                                email:function () {
                                    return $('input[name="email"]').val();
                                },
                                checkCode:function () {
                                    return $('input[name="checkCode"]').val();
                                }
                            }
                        }
                    }
                }

            }
        })
        .on('success.form.bv', function(e) {
            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
}

//发送邮箱验证码
function sendEmailCode(btn) {
    btn.click(function () {
        //发送邮箱验证码
        $.ajax({
            type: 'POST',
            url: '/SSM-Blog/sendEmailCode',
            data: {email: $("#registerEmail").val(), checkCode: $("#checkCode").val()},
            dataType: 'json'
        });
    });
}

function userRegister(btn) {
    btn.click(function () {
        //发送邮箱验证码
        $.ajax({
            type: 'POST',
            url: '/SSM-Blog/userRegister',
            data: {
                email:function () {
                    return $('input[name="email"]').val();
                },
                password:function () {
                    return $('input[name="password"]').val();
                }
            },
            dataType: 'json',
            success:function (data) {
                if(data.valid == true){
                    $("#registerModal").modal("hide");
                    toastr.options.positionClass = 'toast-center-center';
                    toastr.success("注册成功！");
                    setTimeout("resetForm()",2000);
                }else{
                    toastr.options.positionClass = 'toast-center-center';
                    toastr.success("注册失败！");
                    setTimeout("resetForm()",2000);
                }
            }
        });
    });
}

function resetForm() {
    $.ajax({
        type:'POST',
        url: '/SSM-Blog/quit',
        success:function () {
            window.location.href = window.location.href;
        }
    });
}
