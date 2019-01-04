$(function(){
// photoSlide
  window.addEventListener("load", function() {
    $(".wrapperSellingItemInfoLeftSubimages").mouseenter(function(){
      var index = $(".wrapperSellingItemInfoLeftSubimages").index(this);
      var slide = (-304 * index);
      $(".wrapperSellingItemInfoLeftMainimage").animate( { left: slide + "px"},500 );
      $(".wrapperSellingItemInfoLeftSubimages").css("opacity","0.5");
      $(".wrapperSellingItemInfoLeftSubimages").eq(index).css("opacity","1")
     });

// Modal
    let open = document.getElementById('open');
    let cancel = document.getElementById('cancel');
    let modal = document.getElementById('modal');
    let mask = document.getElementById('mask');
    open.addEventListener('click', function(){
      mask.className = '';
      modal.className = '';
    })
    mask.addEventListener('click', function(){
      modal.className = 'hidden';
      mask.className = 'hidden';
    })
    cancel.addEventListener('click', function(){
      mask.click();
    })
  }, false);
});
