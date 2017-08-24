﻿CREATE TABLE [dbo].[TicketPurchases]
(
    [VenueId]           INT         NOT NULL,
    [TicketPurchaseId]  INT         IDENTITY NOT NULL, 
    [PurchaseDate]      DATETIME    NOT NULL, 
    [PurchaseTotal]     MONEY       NOT NULL,
    [CustomerId]        INT         NOT NULL,
    PRIMARY KEY CLUSTERED ([VenueId], [TicketPurchaseId] ASC), 
    CONSTRAINT [FK_TicketPurchases_Customers] FOREIGN KEY ([VenueId], [CustomerId]) REFERENCES [Customers]([VenueId], [CustomerId])
)

GO

CREATE INDEX [IX_TicketPurchases_CustomerId] ON [dbo].[TicketPurchases] (CustomerId)

GO