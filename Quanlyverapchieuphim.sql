USE [Quanlyverapchieuphim]
GO
/****** Object:  Table [dbo].[Chitietve]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietve](
	[Mave] [nvarchar](5) NULL,
	[Soghe] [nvarchar](2) NULL,
	[Masuatchieu] [nvarchar](5) NULL,
	[Maphim] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Daodienphim]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Daodienphim](
	[Maphim] [nvarchar](5) NULL,
	[Madaodien] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[Soghe] [nvarchar](2) NOT NULL,
	[Loaighe] [nvarchar](10) NULL,
	[Giaghe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Soghe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[Makhachhang] [nvarchar](5) NOT NULL,
	[Hovaten] [nvarchar](200) NULL,
	[Ngaysinh] [datetime] NULL,
	[Sodienthoai] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[Tuoi] [int] NULL,
	[Gioitinh] [bit] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[Makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Manhanvien] [nvarchar](5) NOT NULL,
	[Tennhanvien] [nvarchar](200) NULL,
	[Tuoi] [int] NULL,
	[Chucvu] [nvarchar](100) NULL,
	[Ngaysinh] [datetime] NULL,
	[Noisinh] [nvarchar](200) NULL,
	[Gioitinh] [bit] NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Maphim] [nvarchar](5) NOT NULL,
	[Tenphim] [nvarchar](200) NULL,
	[Dangphim] [nvarchar](10) NULL,
	[Thoiluongphim] [nvarchar](10) NULL,
	[Maloaiphim] [nvarchar](5) NULL,
	[Maphong] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phimtheloai]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phimtheloai](
	[Maphim] [nvarchar](5) NULL,
	[Matheloai] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phongchieu]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phongchieu](
	[Maphong] [nvarchar](5) NOT NULL,
	[Loaiphong] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suatchieu]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suatchieu](
	[Masuatchieu] [nvarchar](5) NOT NULL,
	[Tensuatchieu] [nvarchar](100) NULL,
	[Thoigianbatdauchieu] [datetime] NULL,
	[Thoigianketthuc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Masuatchieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheloaiPhim]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheloaiPhim](
	[Maloaiphim] [nvarchar](5) NOT NULL,
	[Theloai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloaiphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtindaodien]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtindaodien](
	[Madaodien] [nvarchar](5) NOT NULL,
	[Hovaten] [nvarchar](200) NULL,
	[Tuoi] [int] NULL,
	[Gioitinh] [bit] NULL,
	[Ngaythangnamsinh] [datetime] NULL,
	[Quequan] [nvarchar](100) NULL,
	[Tieusu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madaodien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtindienvien]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtindienvien](
	[Madienvien] [nvarchar](5) NOT NULL,
	[Hovaten] [nvarchar](200) NULL,
	[Tuoi] [int] NULL,
	[Gioitinh] [bit] NULL,
	[Ngaythangnamsinh] [datetime] NULL,
	[Quequan] [nvarchar](100) NULL,
	[Tieusu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madienvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 1/17/2022 9:16:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[Mave] [nvarchar](5) NOT NULL,
	[Loaive] [nvarchar](150) NULL,
	[Ngaydatve] [datetime] NULL,
	[Giave] [int] NULL,
	[Makhachhang] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chitietve]  WITH CHECK ADD FOREIGN KEY([Maphim])
REFERENCES [dbo].[Phim] ([Maphim])
GO
ALTER TABLE [dbo].[Chitietve]  WITH CHECK ADD FOREIGN KEY([Masuatchieu])
REFERENCES [dbo].[Suatchieu] ([Masuatchieu])
GO
ALTER TABLE [dbo].[Chitietve]  WITH CHECK ADD FOREIGN KEY([Mave])
REFERENCES [dbo].[Ve] ([Mave])
GO
ALTER TABLE [dbo].[Chitietve]  WITH CHECK ADD FOREIGN KEY([Soghe])
REFERENCES [dbo].[Ghe] ([Soghe])
GO
ALTER TABLE [dbo].[Daodienphim]  WITH CHECK ADD FOREIGN KEY([Madaodien])
REFERENCES [dbo].[thongtindaodien] ([Madaodien])
GO
ALTER TABLE [dbo].[Daodienphim]  WITH CHECK ADD FOREIGN KEY([Maphim])
REFERENCES [dbo].[Phim] ([Maphim])
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD FOREIGN KEY([Maloaiphim])
REFERENCES [dbo].[TheloaiPhim] ([Maloaiphim])
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phongchieu] ([Maphong])
GO
ALTER TABLE [dbo].[Phimtheloai]  WITH CHECK ADD FOREIGN KEY([Maphim])
REFERENCES [dbo].[Phim] ([Maphim])
GO
ALTER TABLE [dbo].[Phimtheloai]  WITH CHECK ADD FOREIGN KEY([Matheloai])
REFERENCES [dbo].[TheloaiPhim] ([Maloaiphim])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([Makhachhang])
REFERENCES [dbo].[Khachhang] ([Makhachhang])
GO
