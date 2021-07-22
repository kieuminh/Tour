let number_type = document.getElementById("tour_number_type");
let list_infomation_user = document.getElementById('list_infomation_user');
let price_nguoi_lon = +document.getElementById('price_nguoi_lon').innerHTML;
let price_tre_em = +document.getElementById('price_tre_em').innerHTML;
let price_tre_nho = +document.getElementById('price_tre_nho').innerHTML;
console.log(price_nguoi_lon);
number_type.addEventListener("change",loadInformationForm);
window.onload = loadInformationForm;
function loadInformationForm(e){
    let nguoilon = +document.getElementById('tour_nguoi_lon').value;
let treem = +document.getElementById('tour_tre_em').value;
let trenho = +document.getElementById('tour_tre_nho').value;
let soluong = document.getElementById('tour_so_luong');
let price_tong = 0;

     soluong.value = nguoilon + trenho + treem;
    console.log(soluong.value);
    let html = "";
  
        for(let i =0; i < soluong.value; i++){
           
           if(nguoilon > 0){
            html +=`<div class="tour__list__user__item__test">
            <div class="row" >
              <div class="col-12 tour__list__user__item__test__user">
                <p class="col-12 px-2">Khách Hàng</p>
              </div>
            
              <div class="col-12 tour__list__user__item__test__name" >
                <div class="row px-2  py-4">
                  <div class="col-2">
                    <div>
                      <label for="">Tên(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="name.[${i}]"
                      placeholder="Nhập Họ Tên"
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Email(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="email.[${i}]"
                      placeholder="Nhập email"
                    />
                  </div>
               
                  <div class="col-2">
                    <div>
                      <label for="">Ngày Sinh(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="date"
                      name="date"
                      
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Giới Tính(<span>*</span>)</label>
                    </div>
                    <select name="gioitinh" style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="1">Nam</option>
                      <option value="2">Nữ</option>
                    </select>
                  </div>
                
                  <div class="col-2">
                    <div>
                      <label for="">Độ tuổi(<span>*</span>)</label>
                    </div>
                    <select style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="1">Người Lớn</option>
                    </select>
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Sđt(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="phone.[${i}]"
                      placeholder="Nhập sdt"
                    />
                  </div>
                </div>
              </div>
              <div class="tour__list__user__item__test__price col-12">
                <p class="text-right px-2">Trị giá : <span>${price_nguoi_lon}đ</span></p>
                <input type="hidden" name="unitprice.[${i}]" value="${price_nguoi_lon}">
              </div>
            </div>
            </div>
         
            `;
            price_tong += price_nguoi_lon;
            nguoilon--;
            continue;
           }
           if(treem > 0){
            html +=`<div class="tour__list__user__item__test">
            <div class="row" >
              <div class="col-12 tour__list__user__item__test__user">
                <p class="col-12 px-2">Khách Hàng</p>
              </div>
            
              <div class="col-12 tour__list__user__item__test__name" >
                <div class="row px-2  py-4">
                  <div class="col-2">
                    <div>
                      <label for="">Tên(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="name.[${i}]"
                      placeholder="Nhập Họ Tên"
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Email(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="email.[${i}]"
                      placeholder="Nhập email"
                    />
                  </div>
               
                  <div class="col-2">
                    <div>
                      <label for="">Ngày Sinh(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="date"
                      name="date"
                      
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Độ tuổi(<span>*</span>)</label>
                    </div>
                    <select name="gioitinh" style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="1">Nam</option>
                      <option value="2">Nữ</option>
                    </select>
                  </div>
                
                  <div class="col-2">
                    <div>
                      <label for="">Độ tuổi(<span>*</span>)</label>
                    </div>
                    <select style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="2">Trẻ em</option>
                    </select>
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Sđt(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="phone.[${i}]"
                      placeholder="Nhập sdt"
                    />
                  </div>
                </div>
              </div>
              <div class="tour__list__user__item__test__price col-12">
                <p class="text-right px-2">Trị giá : <span>${price_tre_em}đ</span></p>
                <input type="hidden" name="unitprice.[${i}]" value="${price_tre_em}">
              </div>
            </div>
            </div>
         
            `;
            price_tong += price_tre_em;
            console.log(price_tre_em);
            treem--;
            continue;
           }
           if(trenho > 0){
            html +=`<div class="tour__list__user__item__test">
            <div class="row" >
              <div class="col-12 tour__list__user__item__test__user">
                <p class="col-12 px-2">Khách Hàng</p>
              </div>
            
              <div class="col-12 tour__list__user__item__test__name" >
                <div class="row px-2  py-4">
                  <div class="col-2">
                    <div>
                      <label for="">Tên(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="name.[${i}]"
                      placeholder="Nhập Họ Tên"
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Email(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="email.[${i}]"
                      placeholder="Nhập email"
                    />
                  </div>
               
                  <div class="col-2">
                    <div>
                      <label for="">Ngày Sinh(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="date"
                      name="date"
                      
                    />
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Độ tuổi(<span>*</span>)</label>
                    </div>
                    <select name="gioitinh" style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="1">Nam</option>
                      <option value="2">Nữ</option>
                    </select>
                  </div>
                
                  <div class="col-2">
                    <div>
                      <label for="">Độ tuổi(<span>*</span>)</label>
                    </div>
                    <select style=" padding: 8px 0;
                    border: 2px solid rgba(0, 0, 0, 0.3);
                    margin-bottom: 10px;">
                      <option value="3">Trẻ nhỏ</option>
                    </select>
                  </div>
                  <div class="col-2">
                    <div>
                      <label for="">Sđt(<span>*</span>)</label>
                    </div>
                    <input
                      class="tour__contact__input col-12"
                      type="text"
                      name="phone.[${i}]"
                      placeholder="Nhập sdt"
                    />
                  </div>
                </div>
              </div>
              <div class="tour__list__user__item__test__price col-12">
                <p class="text-right px-2">Trị giá : <span>${price_tre_nho}đ</span></p>
                <input type="hidden" name="unitprice.[${i}]" value="${price_tre_nho}">
              </div>
            </div>
            </div>
         
            `;
            price_tong += price_tre_nho;
            console.log(price_tre_nho);
            trenho--;
            continue;
           }
        }
        html += `   <div class="tour__list__user__item__test__total ">
        <div class="row ">
          <div class="col-12 ">
            <p class="text-right px-2">Tổng tiền : <span>${price_tong}đ</span></p>
            <input type="hidden" name="total_money" value="${price_tong}">
          </div>
        </div>
        </div>`;
        
        list_infomation_user.innerHTML = html;
    
    
    
}