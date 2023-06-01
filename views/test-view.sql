CREATE VIEW AtlantaUserInterests AS
SELECT U.Email, Interest, SinceAge
FROM UserInterests I, RegularUser U
where I.Email = U.Email AND HomeTown='Atlanta';