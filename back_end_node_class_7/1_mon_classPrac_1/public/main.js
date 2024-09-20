document.addEventListener('DOMContentLoaded', function() {
    const popup = document.getElementById('popup');
    const closeBtn = document.getElementById('closeBtn');
    const rememberCheckbox = document.getElementById('rememberCheckbox');
  
    if (popup) {
      closeBtn.addEventListener('click', function() {
        if (rememberCheckbox.checked) {
          document.cookie = "noPopup=true; path=/; max-age=" + 24*60*60;
        }
        popup.style.display = 'none';
      });
    }
  });
  