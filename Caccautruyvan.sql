go 
use
Quanlyverapchieuphim

/*10/-->7/-->9/ */
select A.Hovaten, A.Gioitinh, A.Tuoi, A.Ngaythangnamsinh, A.Quequan, A.Tuoi, B.Tenphim, C.Theloai 
from   dbo.thongtindienvien as A, dbo.Phim as B, dbo.TheloaiPhim as C  
where B.Maloaiphim = C.Maloaiphim


/*10/-->7/-->8/ */
select A.Hovaten, A.Gioitinh, A.Tuoi, A.Ngaythangnamsinh, A.Quequan, A.Tuoi, B.Tenphim
from  dbo.thongtindienvien as A, dbo.Phim as B, dbo.Phongchieu as C 
where B.Maphong = C.Maphong

/*7/-->6/-->4/-->3/-->1 */
select A.Mave as [Vé], D.Thoigianbatdauchieu as [Thời gian chiếu], B.Tenphim as [Phim chiếu], C.Maphong as [Phòng], G.Soghe as [Số ghế]
from dbo.Chitietve as A, dbo.Phim as B, dbo.Phongchieu as C, dbo.Suatchieu as D, dbo.Ve as E, dbo.Khachhang as F, dbo.Ghe as G
where A.Mave =E.Mave and A.Maphim = B.Maphim and A.Masuatchieu = D.Masuatchieu and A.Maphim = B.Maphim and E.Makhachhang = F.Makhachhang and A.Soghe = G.Soghe

/*3/-->6/-->4/-->7/-->8/ */
select D.Thoigianbatdauchieu as [Thời gian chiếu], B.Tenphim as [Phim chiếu], C.Maphong as [Phòng], G.Soghe as [Số ghế]
from dbo.Chitietve as A, dbo.Phim as B, dbo.Phongchieu as C, dbo.Suatchieu as D, dbo.Ve as E, dbo.Ghe as G
where A.Mave =E.Mave and A.Maphim = B.Maphim and A.Masuatchieu = D.Masuatchieu and A.Maphim = B.Maphim and A.Soghe = G.Soghe





