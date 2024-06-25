console.log('!');

function uploadThumbnail() {
    const formData = new FormData();
    const fileInput = document.querySelector('#thumbnail');
    formData.append('thumbnail', fileInput.files[0]);

    axios({
        method: 'POST',
        url: '/dynamicFile',
        data: formData,
        headers: {
            'Content-Type': 'multipart/form-data',
        }
    }).then(function (res) {
        console.log(res);
        console.log(res.data.path);

        document.querySelector('img').src = `/${res.data.path}`;
        document.querySelector('img').classList.add('thumbnail');
    });
}