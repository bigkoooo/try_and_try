console.log('!');

function uploadThumbnail() {
    const formData = new FormData();

    const fileInput = document.querySelector('#thumbnail');
    console.dir(fileInput);
    console.dir(fileInput.files);

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
        console.log(res.data.filename); 

        document.querySelector('img').src = `/uploads/${res.data.filename}`;
        document.querySelector('img').classList.add('thumbnail');
    }).catch(function (error) {
        console.error('Error:', error);
    });
}