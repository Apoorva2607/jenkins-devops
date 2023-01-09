function validateLogin(){
	
    var error = 0;
	
    if((document.loginForm.userid.value.length<5 || document.loginForm.userid.value.length>50)){
        error++;
        document.getElementById("user_error").innerHTML = "User name must be between 5 and 50 characters";
    }

    if((document.loginForm.passwordid.value.length<5 || document.loginForm.passwordid.value.length>20)){
        error++;
        document.getElementById("pass_error").innerHTML = "Password must be between 5 and 50 characters";
    }
    
	if(error>0){
        return false;
    }
    return true;
}

function validateUpdate(){
	if(document.editBookForm.bookNameID.value.length==0){
		 document.getElementById("name_error").innerHTML = "Enter the book name !!!!";
		 return false;
	}
	return true;
}