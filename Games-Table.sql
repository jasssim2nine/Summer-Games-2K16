﻿CREATE TABLE [dbo].[GAMES] (
    [GAMEID]      INT           IDENTITY (1, 1) NOT NULL,
    [GAMENAME]    VARCHAR (25)  NOT NULL,
    [DESCRIPTION] VARCHAR (250) NOT NULL,
    [POINTS]      INT           NOT NULL,
    [SPECTATORS]  INT           NOT NULL,
    [TEAM_A]      VARCHAR (20)  NOT NULL,
    [TEAM_B]      VARCHAR (20)  NOT NULL,
    [PLAYED_ON]   DATE          NOT NULL DEFAULT CURDATE(),
    CONSTRAINT [PK_GAMES] PRIMARY KEY CLUSTERED ([GAMEID] ASC)
);

