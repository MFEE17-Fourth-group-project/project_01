axios({
    method: 'post',
    url: '/project_01/dashboard/api/productList.php',
})
    .then(function (response) {
        // console.log(response);
        let data = response.data;
        // console.log(data);
        let content;
        let newArr = [];
        
        newArr = $.grep(data, (row) => {
            return row.status !== '0';
        });
        console.log(newArr);










        for(let i = 50; i < 60; i++){
            let status;
            switch(data[i].status){
                case '1':
                    status = '正常供應';
                    statusColor = 'success';
                    break;
                case '2':
                    status = '下架';
                    statusColor = 'success';
                    break;
                case '3':
                    status = '缺貨';
                    statusColor = 'secondary';
                    break;
            }
            content += `
                <tr class="even pointer p-0">
                    <td class="text-center align-middle">
                        <input type="checkbox" class="" name="">
                    </td>
                    <td class="align-middle p-2">${data[i].sku_code}</td>
                    <td class="align-baseline align-middle p-2" style="max-width: 200px;">${data[i].product_name}</td>
                    <td class="align-baseline align-middle text-center px-2 p-1">${data[i].sku_group}</td>
                    <td class="align-baseline align-middle text-right p-2">${data[i].price}</td>
                    <td class="align-baseline align-middle p-2">${data[i].stock}</td>
                    <td class="align-baseline align-middle text-center p-2"><span class="badge badge-${statusColor}">${status}</span></td>
                    <td class="align-baseline align-middle p-2">${data[i].upload_time}</td>
                    <td class="align-baseline align-middle p-2">${data[i].upload_time}</td>
                    <td class="align-middle p-2">
                        <div class="d-flex justify-content-center">
                            <a href="#"
                               class="btn btn-round btn-info d-flex justify-content-center align-items-center "
                               style="width: 30px;height: 30px;"><i class="fas fa-info"></i></a>
                            <a href="#"
                               class="btn btn-round btn-secondary d-flex justify-content-center align-items-center "
                               style="width: 30px;height: 30px;"><i class="fas fa-edit"></i></a>
                            <a href="#"
                               class="btn btn-round btn-danger d-flex justify-content-center align-items-center "
                               style="width: 30px;height: 30px;"><i class="fas fa-trash-alt"></i></a>
                        </div>
                    </td>
                </tr>
            `
        }
        $('tbody').append(content);
    }).catch(function (error) {
        console.log(error);
    }
);