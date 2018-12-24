/**
 * 完成页面之间的跳转
 */
function lkxTest() {
    navigation("/SSM-Blog/lkxTest","action");
}

function toHomePage() {
    navigation("/SSM-Blog/homePage","blogList");
}
//导航条跳转方法
function navigation(url,srcVal) {
    $.ajax({
        type:'POST',
        url:url,
        success:function () {
            document.getElementById("blogListFrame").src = srcVal;
        }
    });
}