SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.procLogs_Insert 
	@log_date datetime2, 
  @log_thread varchar(50), 
  @log_level varchar(50), 
  @log_source varchar(300), 
  @log_message varchar(4000), 
  @exception varchar(4000)
AS
BEGIN
	SET NOCOUNT ON;

  insert into dbo.Logs (logDate, logThread, logLevel, logSource, logMessage, exception)
  values (@log_date, @log_thread, @log_level, @log_source, @log_message, @exception)

END
GO
