
Select count(business_id) from business;


Select count(categories) from business;

Select Count(business_id) FROM Business WHERE buisness_id IN (SELECT b.buisness_id FROM Business b, Categories c where b.buisness_id=c.buisness_id AND c.category IN (‘Restaurants’););

DELETE FROM Business WHERE buisness_id IN ( SELECT b.buisness_id FROM Business b, Categories c where b.buisness_id=c.buisness_id AND c.category NOT IN (‘Restaurants’););

CREATE INDEX stars ON business(stars);

SELECT business_id, stars FROM business ORDER BY stars DESC;

ALTER TABLE BUSINESS DROP CONSTRAINT pk_business_id;

ALTER TABLE BUSINESS DROP CONSTRAINT fK_category_id;
 
ALTER TABLE business DROP INDEX stars;

 SELECT business_id, stars FROM busIness ORDER BY stars DESC;
 
 SELECT b.buisness_id FROM Business b, Categories c where b.buisness_id=c.buisness_id AND c.category IN (‘Restaurants’);
 
 CREATE INDEX business ON Business(business_id); 
 
 CREATE INDEX business_categories ON Categories(business_id);
 
 ALTER TABLE Business DROP INDEX business;
 
 ALTER TABLE categories DROP INDEX business_categories ;
 
 select sum('checkin_info.18-4') as Maximum_Checkins from checkin where business_id in (SELECT b.buisness_id FROM Business b, Categories c where b.buisness_id=c.buisness_id AND c.category IN (‘Restaurants’););
 
 CREATE INDEX business ON Checkin(business_id);

ALTER TABLE Checkin DROP INDEX business;

