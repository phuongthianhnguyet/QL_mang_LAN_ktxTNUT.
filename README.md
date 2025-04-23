# QL_mang_LAN_ktxTNUT.
# Bài làm của Ánh Nguyệt - K225480106098 👧

💨 Đề bài đồ án: Phân tích thiết kế hệ thống quản lí mạng LAN KTX trường đại học Kĩ thuật công nghiệp. 

👉 1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
   
👉 2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
   
💨 YÊU CẦU CỦA BÀI TẬP.

👉 1. Dựa trên cơ sở là csdl của Đồ án

👉 2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
   
👉 3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
   
👉 4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
   
👉 5. Kết luận về Trigger đã giúp gì cho đồ án của em.
# Sơ đồ đầu ra đầu vào của em.

![image](https://github.com/user-attachments/assets/3f889a73-8f54-460e-80cd-3c7760413a2a)

# Em có các bảng dữ liệu cần thiết(3NF) như sau:
1. Bảng SinhVien: #mssv, tensv, @maphong, mathietbi, matk.
2. Bảng TaiKhoan: #matk, @mssv, tendangnhap, matkhau, trangthaitk, ngaycauhinh.
3. Bảng Phong: #maphong, tang, toa.
4. Bảng Thietbi: STT, #mathietbi, tenthietbi, @maphong, trangthaihoatdong,lichsutrangthai.
5. Bảng Cauhinhmang: #STT, #macauhinh, @maqtv, @mathietbi, ip, snmask, gateway, DNS, ngaycauhinh.
6. Bảng TaiKhoan: #matk, @mssv, tendangnhap, matkhau, trangthaitk, ngaycauhinh.
7. Bảng BaoKhoan: #STT, @maphong, @mssv, @mathietbi, tensv, thongtinsuco, ketqua.

# thiết kế csdl:

1. Bảng SinhVien.
   
 ![image](https://github.com/user-attachments/assets/b2d93d07-1af1-4ed3-9c47-39e463783249)

  
2. Bảng TaiKhoan.
   
 ![image](https://github.com/user-attachments/assets/7a85ee40-c56e-4332-9eda-5bccfb5946d9)

  
3. Bảng Phong.
   
  ![image](https://github.com/user-attachments/assets/fca4e5cf-be60-4e80-8e79-24561f7b28fc)

  
4. Bảng ThietBi.
   
  ![image](https://github.com/user-attachments/assets/c871101a-9d5d-4ff7-bbba-5a8e2c44744a)

  
5. Bảng CauHinhMang.
   
  ![image](https://github.com/user-attachments/assets/6af62e69-2871-4355-b032-2da1b2d10068)

  
6. Bảng QuanTriVien.
   
 ![image](https://github.com/user-attachments/assets/b82421a9-0878-4372-8a2e-4fa220d32b0d)

  
7. Bảng BaoCao.
   
 ![image](https://github.com/user-attachments/assets/b41153d7-be00-4c77-8b9b-cb172e05f068)


 💥 diagrams


 ![image](https://github.com/user-attachments/assets/5e4037eb-cea5-424c-97f1-6a932691880c)
 
 # Tạo Trigger cho bảng Thietbi để xử lý dữ liệu phi chuẩn


 ```CREATE TRIGGER trg_Validate_TrangThaiThietBi
ON ThietBi
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE ThietBi
    SET trangthaihoatdong = 'Không xác định'
    WHERE trangthaihoatdong NOT IN (N'Hoạt động', N'Ngừng')
    AND mathietbi IN (SELECT mathietbi FROM inserted);
END;
```

# Tạo Test Trigger bằng cách thêm dữ liệu sai

Kết quả nhận được như trong hình.


![image](https://github.com/user-attachments/assets/a07668f1-4f35-478d-afa1-7d4756933c8a)



# Kết luận triggers.
- Tự động kiểm tra và đảm bảo tính đúng đắn dữ liệu
- Phát hiện và xử lý dữ liệu phi chuẩn (sai định dạng, sai quy tắc)
- Tránh được lỗi logic trong dữ liệu, giảm rủi ro sai lệch hệ thống.
