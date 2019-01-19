
function usernameExists() {
    window.onload = function () {
        alert("Username already exists!");
    };
}

function registerSuccess() {
    window.onload = function () {
        alert("Register successful!");
    };
}



function userInvalid() {
    window.onload = function () {
        alert("Invalid user!");
    };
}

function loginSuccess() {
    window.onload = function () {
        alert("Login successful!");
    };
}



window.onscroll = function() {scrollFunction();};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}


function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
