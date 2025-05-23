USE [QL_mang_LAN_KTX_TNUT]
GO
INSERT [dbo].[Phong] ([maphong], [tang], [toa]) VALUES (N'101', 1, N'A')
INSERT [dbo].[Phong] ([maphong], [tang], [toa]) VALUES (N'102', 1, N'A')
INSERT [dbo].[Phong] ([maphong], [tang], [toa]) VALUES (N'103', 1, N'A')
GO
INSERT [dbo].[SinhVien] ([mssv], [tensv], [maphong], [mathietbi], [matk]) VALUES (N'M01', N'Phương Ánh Nguyệt', N'101', N'N0701', N'TK1')
INSERT [dbo].[SinhVien] ([mssv], [tensv], [maphong], [mathietbi], [matk]) VALUES (N'M02', N'Trần Thu Hà', N'102', N'N0702', N'TK2')
INSERT [dbo].[SinhVien] ([mssv], [tensv], [maphong], [mathietbi], [matk]) VALUES (N'M03', N'Nguyễn Như Khiêm', N'103', N'N0703', N'TK3')
GO
INSERT [dbo].[ThietBi] ([STT], [mathietbi], [tenthietbi], [maphong], [trangthaihoatdong], [lichsutrangthai]) VALUES (1, N'N0701', N'WF1', N'101', N'hoạt động', N'tốt')
INSERT [dbo].[ThietBi] ([STT], [mathietbi], [tenthietbi], [maphong], [trangthaihoatdong], [lichsutrangthai]) VALUES (2, N'N0702', N'WF2', N'102', N'hoạt động', N'tốt')
INSERT [dbo].[ThietBi] ([STT], [mathietbi], [tenthietbi], [maphong], [trangthaihoatdong], [lichsutrangthai]) VALUES (3, N'N0703', N'WF3', N'103', N'không hoạt động', N'kém')
INSERT [dbo].[ThietBi] ([STT], [mathietbi], [tenthietbi], [maphong], [trangthaihoatdong], [lichsutrangthai]) VALUES (NULL, N'TB999', N'Máy in phòng X', N'101', N'Không xác d?nh', NULL)
GO
INSERT [dbo].[BaoCao] ([STT], [tensinhvien], [mathietbi], [mssv], [maphong], [thongtinsuco], [ketqua]) VALUES (1, N'Phương Ánh Nguyệt', N'N0701', N'M01', N'101', N'không', N'tốt')
INSERT [dbo].[BaoCao] ([STT], [tensinhvien], [mathietbi], [mssv], [maphong], [thongtinsuco], [ketqua]) VALUES (2, N'Trần Thu Hà', N'N0702', N'M02', N'102', N'không', N'tốt')
INSERT [dbo].[BaoCao] ([STT], [tensinhvien], [mathietbi], [mssv], [maphong], [thongtinsuco], [ketqua]) VALUES (3, N'Nguyễn Như Khiêm', N'N0703', N'M03', N'103', N'có', N'kém')
GO
INSERT [dbo].[QuanTriVien] ([maqtv], [tenqtv], [email], [SDT], [chucvu], [trangthaitaikhoan]) VALUES (N'QTV1', N'Đỗ Duy Cốp', N'Copdz@', 987654321, N'Giảng viên', N'đang theo dõi')
GO
INSERT [dbo].[CauHinhMang] ([STT], [macauhinh], [mathietbi], [maqtv], [ip], [snmask], [gateway], [DNS], [ngaycauhinh]) VALUES (1, N'CH1', N'N0701', N'QTV1', N'192.168.1.1', N'255.255.255.0', N'255.255.255.1', N'192.168.1.2', CAST(N'2025-01-09' AS Date))
INSERT [dbo].[CauHinhMang] ([STT], [macauhinh], [mathietbi], [maqtv], [ip], [snmask], [gateway], [DNS], [ngaycauhinh]) VALUES (2, N'CH2', N'N0702', N'QTV1', N'190.190.190.1', N'255.255.255.2', N'255.255.252.5', N'190.145.14.5', CAST(N'2025-01-02' AS Date))
INSERT [dbo].[CauHinhMang] ([STT], [macauhinh], [mathietbi], [maqtv], [ip], [snmask], [gateway], [DNS], [ngaycauhinh]) VALUES (3, N'CH3', N'N0703', N'QTV1', N'111.111.111.111', N'255.255.255.255', N'255.255.255.0', N'190.100.111.2', CAST(N'2025-01-05' AS Date))
GO
INSERT [dbo].[TaiKhoan] ([matk], [mssv], [tendangnhap], [matkhau], [trangthaitk], [ngaycauhinh]) VALUES (N'TK1', N'M01', N'Nguyet', N'12345', N'tốt', CAST(N'2025-04-10' AS Date))
INSERT [dbo].[TaiKhoan] ([matk], [mssv], [tendangnhap], [matkhau], [trangthaitk], [ngaycauhinh]) VALUES (N'TK2', N'M02', N'Ha', N'12345', N'tốt', CAST(N'2025-04-10' AS Date))
INSERT [dbo].[TaiKhoan] ([matk], [mssv], [tendangnhap], [matkhau], [trangthaitk], [ngaycauhinh]) VALUES (N'TK3', N'M03', N'Khiem', N'12345', N'kém', CAST(N'2025-04-10' AS Date))
GO
