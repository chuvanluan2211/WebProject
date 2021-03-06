create database Assignment

use Assignment

CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL
)
SET IDENTITY_INSERT [dbo].[Account] ON 
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'adv', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'abc', N'123456', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'asa', N'123456', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'123456', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'123456', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'123456', 1, 0)
create table [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[sell_ID] [int] NULL
)
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[aid] int NULL,
	[NumberOfOrder] [int] NULL
)
CREATE TABLE [dbo].[order_items](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[item_id] int NULL,
	[product_id] int NULL,
	[quantity] float(10),
	[price] float(10)
)
drop table [dbo].[order]
drop table [dbo].[order_items]
SET IDENTITY_INSERT [dbo].[order_items] On

INSERT  [dbo].[order]([ID]  ,[aid] ,[NumberOfOrder]) values(1, 1 , 2)
INSERT  [dbo].[order]([ID]  ,[aid] ,[NumberOfOrder]) values(2, 2 , 5)
INSERT  [dbo].[order]([ID]  ,[aid] ,[NumberOfOrder]) values(3, 4 , 2)
INSERT  [dbo].[order]([ID]  ,[aid] ,[NumberOfOrder]) values(4, 1 , 2)

INSERT [order_items] ([oID],[item_id],[product_id],[quantity] ,[price]) values(1 , 1 , 4, 2 , 1700000 )
INSERT [order_items] ([oID],[item_id],[product_id],[quantity] ,[price]) values(2 , 2 , 3, 2 , 1700000 )
INSERT [order_items] ([oID],[item_id],[product_id],[quantity] ,[price]) values(3 , 3 , 2, 2 , 1700000 )
INSERT [order_items] ([oID],[item_id],[product_id],[quantity] ,[price]) values(4 , 4 , 5, 2 , 1700000 )


INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (1, N'Optimus',N'bmbbs03.jpg',1800000, N'BS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (2, N'Startcream',N'BMBT10.jpg',1800000, N'T-10',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (3, N'BumbleBee',N'ce01.jpg',1800000, N'CE-01',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (4, N'Brawl',N'brawl.jpg',1800000, N'LS-06',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (5, N'Long Haul',N'ds01.jpg',1800000, N'DS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (6, N'The Ghost',N'ds02.jpg',1800000, N'DS-04',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (7, N'Bomber',N'IMG_3257-300x300.jpeg',1800000, N'DS-05',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (8, N'JetFire',N'jet5.jpg',1800000, N'LS-02',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (9, N'Grimlock',N'ls05s.jpg',1800000, N'LS-07',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (10, N'Megatron',N'mega1.jpg',1800000, N'BS-06',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (11, N'Megatron',N'mega3.jpg',1800000, N'OS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (12, N'Optimus',N'opapple.jpg',1800000, N'LS-09',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (13, N'Ratchet',N'ratchet.jpg',1800000, N'IS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (14, N'Sentinel',N'sentinel.jpg',1800000, N'BS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (15, N'Shockway',N'shockcyber.jpeg',1800000, N'BS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description],[sell_ID]) VALUES (16, N'Shockway',N'shockway.jpg',1800000, N'BS-03',N'Thế giới mô hình xin giới thiệu một sản phẩm đến từng hãng Black Mamba: BS03 Optimus Prime The Last Knight KO UT R-02.
⚫Thông tin sản phẩm:
Kích thước: Cao khoảng 28cm.Chất liệu: ABS, Diecast. Phụ kiện: Kiếm, khiên, s/ú/ng, trượng, lưỡi da/o.',1)

SET IDENTITY_INSERT [dbo].[product] On
