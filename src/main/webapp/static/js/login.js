$(document).ready(function () {
    loginCheck($('#loginForm'),'/SSM-Blog/userLogin','密码错误，请重新输入');
});


//bootstrapValidate前端校验
function loginCheck(fm,url,message) {
    fm
        .bootstrapValidator({
            message: '输入无效',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                loginEmail: {
                    validators: {
                        notEmpty: {
                            message: '邮箱不能为空'
                        },
                        loginEmailAddress: {
                            message: '邮箱地址格式错误'
                        },
                        remote:{
                            message:'该邮箱还未注册，请先注册',
                            url:'/SSM-Blog/checkLoginEmail',
                            data:{
                                loginEmail:function () {
                                    return $('input[name="loginEmail"]').val();
                                }
                            }
                        },
                        regexp: {
                            regexp: /^[\w._]+@(qq)\.com(\r\n|\r|\n)?$/,
                            message: '登录邮箱必须是QQ邮箱'
                        }
                    }
                },
                loginPassword: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        remote:{
                            message:message,
                            url:url,
                            data:{
                                loginEmail:function () {
                                    return $('input[name="loginEmail"]').val();
                                },
                                loginPassword:function () {
                                    return $('input[name="loginPassword"]').val();
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

function login() {
    window.location.href = window.location.href;
}

