CREATE USER [WebDAV] FOR LOGIN [WebDAV] WITH DEFAULT_SCHEMA=[dbo]
GRANT SELECT ON [dbo].[BENUTZER] TO [WebDAV]
GRANT SELECT ON [dbo].[BERECHTIGUNGEN] TO [WebDAV]
GRANT SELECT ON [dbo].[GRUPPENZUORDNUNG] TO [WebDAV]
GRANT SELECT ON [dbo].[MANDANT] TO [WebDAV]
GRANT SELECT ON [dbo].[MANDANTENZUORDNUNG] TO [WebDAV]
GRANT SELECT ON [dbo].[MITARBEITER] TO [WebDAV]
GRANT SELECT ON [dbo].[MITARBEITER_BEREICH] TO [WebDAV]
GRANT SELECT ON [dbo].[PERSONEN] TO [WebDAV]
GRANT SELECT ON [dbo].[PFLEGEBED] TO [WebDAV]
GRANT SELECT ON [dbo].[PROTOKOLL] TO [WebDAV]
CREATE NONCLUSTERED INDEX [webdav_protokoll_index] ON [dbo].[PROTOKOLL]
(
	[Vorgang] ASC,
	[ZielTabelle] ASC,
	[ZielIndex] ASC,
	[Systemzeit] ASC
)
