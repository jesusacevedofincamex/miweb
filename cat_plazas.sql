CREATE TABLE [dbo].[nxs_cat_plazas](
    [id_plaza] [int] IDENTITY(1,1) NOT NULL,
    [fec_registro] [date] NOT NULL,
    [pref_plaza] [varchar](1) NOT NULL,
    [clv_plaza] [varchar](3) NOT NULL,
    [nom_plaza] [varchar](60) NOT NULL,
 CONSTRAINT [PK_nxs_cat_plazas] PRIMARY KEY CLUSTERED 
(
    [id_plaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cat_plazas] ADD CONSTRAINT [DF_cat_plazas_fec_registro]  DEFAULT (getdate()) FOR [fec_registro]
GO