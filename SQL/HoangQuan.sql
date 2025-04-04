
CREATE DATABASE HoangQuan;
USE HoangQuan;

-- Tạo bảng danh mục
CREATE TABLE danh_muc (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma_danh_muc VARCHAR(255),
    ten_danh_muc VARCHAR(255),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME
);

-- Tạo bảng sản phẩm
CREATE TABLE san_pham (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma_san_pham VARCHAR(255),
    ten_san_pham VARCHAR(255),
    mo_ta NVARCHAR(500),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME,
    id_danh_muc INT NULL,
    FOREIGN KEY (id_danh_muc) REFERENCES danh_muc(id) ON DELETE CASCADE
);

-- Tạo bảng màu sắc
CREATE TABLE mau_sac (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma_mau VARCHAR(255),
    ten_mau VARCHAR(255),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME
);

-- Tạo bảng kích cỡ
CREATE TABLE size (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ma_size VARCHAR(255),
    ten_size VARCHAR(255),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME
);

-- Tạo bảng khách hàng
CREATE TABLE khach_hang (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ho_ten NVARCHAR(255),
    dia_chi NVARCHAR(255),
    sdt VARCHAR(20),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME
);

-- Tạo bảng nhân viên
CREATE TABLE nhan_vien (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ho_ten_nhan_vien NVARCHAR(255),
    dia_chi NVARCHAR(255),
    sdt VARCHAR(20),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME
);

-- Tạo bảng chi tiết sản phẩm (CTSP)
CREATE TABLE ctsp (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_sp INT NULL,
    id_mau_sac INT NULL,
    id_size INT NULL,
    gia_ban DECIMAL(18,2),
    so_luong_ton INT,
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME,
    FOREIGN KEY (id_sp) REFERENCES san_pham(id) ON DELETE CASCADE,
    FOREIGN KEY (id_mau_sac) REFERENCES mau_sac(id) ON DELETE CASCADE,
    FOREIGN KEY (id_size) REFERENCES size(id) ON DELETE CASCADE
);

-- Tạo bảng hóa đơn
CREATE TABLE hoa_don (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_khach_hang INT NULL,
    id_nhan_vien INT NULL,
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME,
    dia_chi NVARCHAR(255),
    so_dien_thoai VARCHAR(20),
    FOREIGN KEY (id_khach_hang) REFERENCES khach_hang(id) ON DELETE CASCADE,
    FOREIGN KEY (id_nhan_vien) REFERENCES nhan_vien(id) ON DELETE CASCADE
);

-- Tạo bảng hóa đơn chi tiết (HDCT)
CREATE TABLE hdct (
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_hoa_don INT NULL,
    id_ctsp INT NULL,
    so_luong_mua INT,
    gia_ban DECIMAL(18,2),
    tong_tien DECIMAL(18,2),
    trang_thai VARCHAR(50),
    ngay_tao DATETIME,
    ngay_sua DATETIME,
    FOREIGN KEY (id_hoa_don) REFERENCES hoa_don(id) ON DELETE CASCADE,
    FOREIGN KEY (id_ctsp) REFERENCES ctsp(id) ON DELETE CASCADE
);


-- Thêm dữ liệu vào bảng mau_sac (Màu sắc)
INSERT INTO mau_sac (ma_mau, ten_mau, trang_thai, ngay_tao, ngay_sua) VALUES
('M006', N'Xám', N'Hoạt động', GETDATE(), GETDATE()),
('M007', N'Tím', N'Hoạt động', GETDATE(), GETDATE()),
('M008', N'Hồng', N'Hoạt động', GETDATE(), GETDATE()),
('M009', N'Nâu', N'Hoạt động', GETDATE(), GETDATE()),
('M010', N'Bạc', N'Hoạt động', GETDATE(), GETDATE());

-- Thêm dữ liệu vào bảng size (Kích thước)
INSERT INTO size (ma_size, ten_size, trang_thai, ngay_tao, ngay_sua) VALUES
('S006', '27', N'Hoạt động', GETDATE(), GETDATE()),
('S007', '28', N'Hoạt động', GETDATE(), GETDATE()),
('S008', '29', N'Hoạt động', GETDATE(), GETDATE()),
('S009', '30', N'Hoạt động', GETDATE(), GETDATE()),
('S010', '31', N'Hoạt động', GETDATE(), GETDATE());

-- Thêm dữ liệu vào bảng hoa_don (Hóa đơn)
INSERT INTO hoa_don (id_khach_hang, trang_thai, ngay_tao, ngay_sua, dia_chi, so_dien_thoai, id_nhan_vien) VALUES
(1, N'Đã thanh toán', GETDATE(), GETDATE(), N'Hà Nội', '0987654321', 1),
(2, N'Chưa thanh toán', GETDATE(), GETDATE(), N'Hồ Chí Minh', '0977777777', 2),
(3, N'Đang giao', GETDATE(), GETDATE(), N'Đà Nẵng', '0966666666', 3),
(4, N'Đã hủy', GETDATE(), GETDATE(), N'Hải Phòng', '0955555555', 4),
(5, N'Đã thanh toán', GETDATE(), GETDATE(), N'Cần Thơ', '0944444444', 5);



-- Thêm dữ liệu vào danh mục (5 dòng)
INSERT INTO danh_muc (ma_danh_muc, ten_danh_muc, trang_thai, ngay_tao, ngay_sua) VALUES
('DM001', N'adidas', N'Hoạt động', GETDATE(), GETDATE())



-- Thêm dữ liệu vào sản phẩm (5 dòng)
INSERT INTO san_pham (ma_san_pham, ten_san_pham, mo_ta, trang_thai, ngay_tao, ngay_sua, id_danh_muc) VALUES
('SP001', N'Supernova Solution', N'Giày chạy bộ cao cấp', N'Hoạt động', GETDATE(), GETDATE(), 1),
('SP002', N'Ultraboost Light', N'Giày thể thao nam', N'Hoạt động', GETDATE(), GETDATE(), 1),
('SP003', N'NMD_R1', N'Giày thời trang', N'Hoạt động', GETDATE(), GETDATE(), 1),
('SP004', N'Stansmith', N'Giày sneaker da', N'Hoạt động', GETDATE(), GETDATE(), 1),
('SP005', N'Forum Low', N'Giày thể thao cổ điển', N'Hoạt động', GETDATE(), GETDATE(), 1);



-- Thêm dữ liệu vào bảng khách hàng (5 dòng)
INSERT INTO khach_hang (ho_ten, dia_chi, sdt, trang_thai, ngay_tao, ngay_sua) VALUES
(N'Nguyễn Văn A', N'Hà Nội', '0123456789', N'Hoạt động', GETDATE(), GETDATE()),
(N'Trần Thị B', N'Hồ Chí Minh', '0987654321', N'Hoạt động', GETDATE(), GETDATE()),
(N'Lê Văn C', N'Đà Nẵng', '0356789123', N'Hoạt động', GETDATE(), GETDATE()),
(N'Hoàng Thị D',N'Cần Thơ', '0912345678', N'Hoạt động', GETDATE(), GETDATE()),
(N'Phạm Văn E', N'Hải Phòng', '0898765432', N'Hoạt động', GETDATE(), GETDATE());

-- Thêm dữ liệu vào bảng nhân viên (5 dòng)
INSERT INTO nhan_vien (ho_ten_nhan_vien, dia_chi, sdt, trang_thai, ngay_tao, ngay_sua) VALUES
(N'Nguyễn Minh', N'Hà Nội', '0934567890', N'Hoạt động', GETDATE(), GETDATE()),
(N'Trần Anh', N'Hồ Chí Minh', '0945678901', N'Hoạt động', GETDATE(), GETDATE()),
(N'Vũ Thanh', N'Đà Nẵng', '0956789012', N'Hoạt động', GETDATE(), GETDATE()),
(N'Lê Trung', N'Cần Thơ', '0967890123', N'Hoạt động', GETDATE(), GETDATE()),
(N'Hoàng Nam', N'Hải Phòng', '0978901234', N'Hoạt động', GETDATE(), GETDATE());



-- Xem toàn bộ dữ liệu trong bảng danh_muc
SELECT * FROM danh_muc;
-- Xem toàn bộ dữ liệu trong bảng san_pham
SELECT * FROM san_pham;
-- Xem toàn bộ dữ liệu trong bảng mau_sac
SELECT * FROM mau_sac;
-- Xem toàn bộ dữ liệu trong bảng size
SELECT * FROM size;
-- Xem toàn bộ dữ liệu trong bảng khach_hang
SELECT * FROM khach_hang;
-- Xem toàn bộ dữ liệu trong bảng nhan_vien
SELECT * FROM nhan_vien;
-- Xem toàn bộ dữ liệu trong bảng ctsp (Chi tiết sản phẩm)
SELECT * FROM ctsp;
-- Xem toàn bộ dữ liệu trong bảng hoa_don
SELECT * FROM hoa_don;
-- Xe toàn bộ dữ liệu trong bảng hdct (Hóa đơn chi tiết)
SELECT * FROM hdct;

DELETE FROM hdct;
DELETE FROM hoa_don;
DELETE FROM ctsp;
DELETE FROM san_pham;
DELETE FROM danh_muc;
DELETE FROM khach_hang;
DELETE FROM nhan_vien;
DELETE FROM mau_sac;
DELETE FROM size;