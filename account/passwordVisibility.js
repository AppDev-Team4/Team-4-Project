function passwordVisibility() {
        var passwordInput = document.getElementById('password');
        var eyeImage = document.querySelector('.eye');
        var showHidePasswordText = document.querySelector('.showHidePasswordText');

        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            eyeImage.src = 'https://i.postimg.cc/MTphJbqz/ShowPW.png'
            eyeImage.alt = 'eyePic';
            showHidePasswordText.textContent = 'Hide Password';
        } else {
            passwordInput.type = 'password';
            eyeImage.src = 'https://i.postimg.cc/MTphJbqz/ShowPW.png';
            eyeImage.alt = 'eyePic';
            showHidePasswordText.textContent = 'Show Password';
        }
    }