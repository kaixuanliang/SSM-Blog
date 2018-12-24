$(function() {
    $(".panel-heading").on("click", function(e) {
        var idLength = e.currentTarget.id.length;
        var index = e.currentTarget.id.substr(idLength - 1, idLength);
        $("#sub" + index).on('hidden.bs.collapse', function() {

            $(e.currentTarget).find("span").removeClass("glyphicon glyphicon-triangle-bottom");
            $(e.currentTarget).find("span").addClass("glyphicon glyphicon-triangle-right");
        })
        $("#sub" + index).on('shown.bs.collapse', function() {
            $(e.currentTarget).find("span").removeClass("glyphicon glyphicon-triangle-right");
            $(e.currentTarget).find("span").addClass("glyphicon glyphicon-triangle-bottom");
        })
    })

    $(".panel-body > .nav > li > a").on("click", function(e) {
        if(e.currentTarget.textContent == "添加栏目1"){
            document.getElementById("lkx").src="ceshi2";
            alert("123");
        }else{
            document.getElementById("lkx").src="ceshi";
        }
        alert(e.currentTarget.textContent);
    });
});

