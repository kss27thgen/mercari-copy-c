$(function(){
    $(".wrapperShowItemDetailLeftimagesImage").mouseenter(function(){
      var index = $(".wrapperShowItemDetailLeftimagesImage").index(this);
      var slide = (-304 * index);
      $(".wrapperShowItemDetailLeft").animate( { left: slide + "px"},500 );
      $(".wrapperShowItemDetailLeftimagesImage").css("opacity","0.5");
      $(".wrapperShowItemDetailLeftimagesImage").eq(index).css("opacity","1")
     });
  })
