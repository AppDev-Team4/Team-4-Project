function formValidation() {
    var fName = document.getElementById('fName').value;
    var lName = document.getElementById('lName').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if (fName.length > 50 || lName.length > 50) {
        alert("Name: Max Length = 50 Characters. Please try again.")
        return false;
    }
    if (email.length > 100) {
        alert("Email: Max Length = 100 Characters. Please try again.")
        return false;
    }
    if (password.length < 6 || password.length > 20) {
        alert("Password must be 6-20 characters. Please try again.")
        return false;
    }
    
    var validEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!validEmail.test(email)) {
        alert("Please enter a valid email addres.")
        return false;
    }

    var validUpperChar = /[A-Z]/;
    var validNumericChar = /[0-9]/;
    if (!validNumericChar.test(password) || !validUpperChar.test(password)) {
        alert("Please review password requirements.")
        return false;
    }

    return true;
}