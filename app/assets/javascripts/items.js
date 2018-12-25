$(document).on('turbolinks:load',function(){
  var categoryMid = `<select class="categorySelectMid">
                <option value="01">03</option>
                <option value="02">04</option>
                <option value="03">05</option>
              </select>`
  var categoryBottom = `<select class="categorySelectBottom">
                <option value="01">06</option>
                <option value="02">07</option>
                <option value="03">08</option>
              </select>`

  // $(".categorySelectMain").one('change',function(){
  //   $(".itemEntryMainUpperDescriptionRightSelect").append(categoryMid);
  //     $(".categorySelectMid").one('change',function(){
  //       $(".itemEntryMainUpperDescriptionRightSelect").append(categoryBottom);
  //     });
  //       $(".categorySelectMain").select(function() {
  //       var categorySelectMain_val = $(".categorySelectMain").val();
  //         if(categorySelectMain_val == "---") {
  //           $('.categorySelectMid').css('display', 'none');
  //           $('.categorySelectBottom').css('display', 'none');
  //         }
  //       })
  // });
  var products = {

    ladies:[

      '製品1',

      '製品2',

    ],

    men:[

      '製品3',

      '製品4',

    ],

    baby:[

      '製品5',

      '製品6',

      '製品7',

    ],

  };


  $(".categorySelectMain").on('change',function(){
    $(".categorySelectSub").html("")

    var option;
    option = '<option value="製品1">製品1</option>';
    $(".categorySelectSub").append(option);
    option = '<option value="製品2">製品2</option>';
    $(".categorySelectSub").append(option);
    option = '<option value="製品3">製品3</option>';
    $(".categorySelectSub").append(option);
  })





      // console.log($(this).text());
    // $(this).on('select', ".categoryInitialize", function(){
    //   $(this).siblings(".categorySelectMain").remove();
    // });






  // $('categorySelectMain').on('select', function() {
  //   $('categoryInitialize').off(categoryMid);
  // })
});






    // $.ajax({
    //   type: 'GET',
    //   url: '/users',
    //   data: { keyword: input },
    //   dataType: 'json'
    // })

    // .done(function(users) {
    //   $("").empty();
    //     if(users.length !== 0) {
    //       users.forEach(function(user){
    //         appendUser(user);
    //       });
    //     } else {
    //         appendNoUser("一致するユーザーはいません");
    //     }
    //   })

    // .fail(function() {
    //   alert('選択してください');
    // })
//   })
// })
