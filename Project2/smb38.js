
function validate() {
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var pass = document.getElementById("pass");
	var repass = document.getElementById("repass");
	var sex = document.getElementById("sex");
	var comment = document.getElementById("comments");

	var emailcheck = email.value.search(/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/);
	var passcheck = pass.value.search(/((?:[a-z][a-z]*[0-9]+[a-z0-9]*))/);

	console.log(pass.value);
	console.log(repass.value);


	if (name.value === "") {
		alert("You didn't input a name!");
		return false;
	}

	else if( emailcheck !== 0) {
		alert("You entered an invalid email adress!");
		return false;
	}
	else if (passcheck !== 0) {
		alert("Your password isn't valid!");
		return false;


	}
	else if(pass.value !== repass.value) {
		alert("Your passwords don't match!");
		return false;
	}

	return true;
}

function sendMail() {
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var pass = document.getElementById("pass");
	var repass = document.getElementById("repass");
	var sex = document.getElementById("sex");
	var comment = document.getElementById("comments");


	var body = "Your Name: " + name.value + " Your Email: " + email.value + " Your Password: " + pass.value + " Your Comment: " + comment.value;
	var link = "mailto:smb38@njit.edu" + "?subject=" + escape("Class Project 2 Form") +
				"&body=" + escape(body);


	window.location.href = link;
}
