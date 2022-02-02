
window.onload = function() {

    function onClick() {
        document.querySelector('.form_wrap').style.display ='block';
        document.querySelector('.login-form').style.display ='block';
    }
    function offClick() {
        document.querySelector('.form_wrap').style.display ='none';
        document.querySelector('.login-form').style.display ='none';
    }

    document.getElementById('login_btn').addEventListener('click', onClick);
    document.querySelector('submit-btn2').addEventListener('click', offClick);

};