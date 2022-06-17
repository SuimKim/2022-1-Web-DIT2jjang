$(document).ready(function() {
    $(".on").show();
    $(".viewtab li").click(function() {
      var idx = $(this).index();
      $(".viewtab li").removeClass("on");
      $(".viewtab li").eq(idx).addClass("on");
      $(".tab-content").hide();
      $(".tab-content").eq(idx).show();
    })
  });