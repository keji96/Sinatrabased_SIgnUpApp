function checkInput(e){
var $email = $('#emailval')
var ok = /[@ .com]/.test(String.fromCharCode(e.charCode));
  if (!ok){
    $email.css('color', 'red')
   }else{
     $email.css('color', 'green')
   }
}


function emailValidation(){
 var $email = $('#emailval').val()
 var re = /\S+@\S+\.\S+/
 var validation = re.test($email)
  if(validation){
     return true
   }else{
     var $emailval = $('#invalid')
     $emailval.css('display', 'block')
    return false
      }
 }
