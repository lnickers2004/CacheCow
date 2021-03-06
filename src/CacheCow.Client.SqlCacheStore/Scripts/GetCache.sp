SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCache]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].GetCache
GO

-- =============================================
-- Author:		Ali Kheyrollahi
-- Create date: 2012-12-12
-- Description:	returns cache entry by its Id
-- =============================================
CREATE PROCEDURE GetCache
	@cacheKeyHash		BINARY(20)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		CacheBlob
	FROM
		dbo.Cache
	WHERE
		CacheKeyHash = @cacheKeyHash

END
GO
