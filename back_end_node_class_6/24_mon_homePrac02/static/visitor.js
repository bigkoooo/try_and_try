const tbody = document.querySelector('tbody');

function createVisitor(){
    const form = document.forms['visitor-form'];

    axios({
        method: 'POST',
        url: '/visitor',
        data: {
            name: form.name.value,
            comment: form.comment.value,
        }
    }).then((res)=>{
        const { data } = res;

        const html = `
            <tr id_="tr_${data.id}">
                <td>${data.id}</td>
                <td>${data.name}</td>
                <td>${data.comment}</td>
                <td><button type="button">수정</button></td>
                <td><button type="button">삭제</button></td>
            </tr>
        `;

        tbody.insertAdjacentHTML('beforeend',html);
    })
}