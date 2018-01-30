$(document).ready(function(){
    $(".mbox_img button[name=close]").click(function(){
        $(".mbox_img").animate({marginLeft:"-1030px",opacity:"0"},500);
    });
});
function imgZoom(sourceZoom){
    //alert("yeay");
    $(".mbox_img").css({"margin-top":"0px","opacity":"1","margin-left":"0px"});
    $(".mbox_img img").attr("src",sourceZoom);
    $(".mbox_img").animate({marginTop:"-230px",opacity:"show"},500);
};
