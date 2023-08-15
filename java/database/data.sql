BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('brewer','$2a$10$gFM5Y/oDUDKEOGDGKTcQi.IuKQgxUiIuQJjfgOaURA3acpXrzb6o6','ROLE_BREWER');
INSERT INTO users (username,password_hash,role) VALUES ('user4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user5','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user6','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user7','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user8','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user9','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user10','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user11','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');

INSERT INTO brewery (brewery_name, brewer, brewery_type, hours, phone_number, street_address_1, city, state_province, history) VALUES ('Happy Times Brewing', 3, 'micro', 'All Day Every Day', '1-800-BREW-NOW', '123 Hops Lane', 'Philadelphia', 'PA', 'short history');
INSERT INTO brewery (brewery_name, brewery_type, hours, website, street_address_1, city, state_province, history) VALUES ('Jumping Orca', 'closed','M-F 6-10pm', 'jumpingorca.com', '78 Happy Way', 'Wayne', 'PA', 'short history');


INSERT INTO days (day_name) VALUES ('Monday');
INSERT INTO days (day_name) VALUES ('Tuesday');
INSERT INTO days (day_name) VALUES ('Wednesday');
INSERT INTO days (day_name) VALUES ('Thursday');
INSERT INTO days (day_name) VALUES ('Friday');
INSERT INTO days (day_name) VALUES ('Saturday');
INSERT INTO days (day_name) VALUES ('Sunday');

INSERT INTO brewery_days (brewery_id, day_name, open_status) VALUES (1, 'Monday', false);
INSERT INTO brewery_days (brewery_id, day_name, open_status) VALUES (1, 'Tuesday', false);
INSERT INTO brewery_days (brewery_id, day_name, open_status) VALUES (1, 'Wednesday', false);
INSERT INTO brewery_days (brewery_id, day_name, open_status, start_time, start_am_pm, end_time, end_am_pm) VALUES (1, 'Thursday', true, 6, 'PM', 10, 'PM');
INSERT INTO brewery_days (brewery_id, day_name, open_status, start_time, start_am_pm, end_time, end_am_pm) VALUES (1, 'Friday', true, 6, 'PM', 10, 'PM');
INSERT INTO brewery_days (brewery_id, day_name, open_status, start_time, start_am_pm, end_time, end_am_pm) VALUES (1, 'Saturday', true, 12, 'PM', 2, 'AM');
INSERT INTO brewery_days (brewery_id, day_name, open_status, start_time, start_am_pm, end_time, end_am_pm) VALUES (1, 'Sunday', true, 12, 'PM', 10, 'PM');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Golden Gryphon Ale', 'A smooth and radiant ale that boasts a gentle honey undertone. Its mythical name reflects its delicate balance between malt sweetness and hoppy bitterness.', 5.5, 'Golden Ale');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Mystic Mountain Stout', 'Description: Dark as a moonless night and as mysterious as the mountains from which it gets its name. This stout presents bold flavors of dark chocolate and roasted coffee.', 8.0, 'Imperial Stout');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Lunar Lagoon Lager', 'A crisp and refreshing brew with a light body and clear golden hue. The perfect beer to unwind after a long day, evoking images of a calm lagoon under the moon''s silver light.', 4.7, 'Lager');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Solar Flare Saison', 'Bursting with spicy and fruity notes, this effervescent saison is reminiscent of a sunburst on a summer day, energetic and full of life.', 6.2, 'Saison');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Tempestuous Teak IPA', 'A tropical IPA, enriched with the nuances of teakwood. Hints of mango and pine contrast with a gentle woody backbone.', 6.8, 'India Pale Ale');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Borealis Breeze Berliner Weisse', 'A tart and tangy offering that paints your palate with the cool colors of the northern lights. Pairs well with a dash of fruity syrup or enjoyed on its own.', 3.8, 'Berliner Weisse');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Tidal Twist Tripel', 'A traditional Belgian-style brew with a twist. Notes of banana, clove, and citrus are carried forth by a strong tidal wave of alcohol warmth.', 9.0, 'Berliner Weisse');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Cerulean Cove Kölsch', 'A clear and coastal brew, its mellow maltiness is complemented by a subtle fruitiness, transporting drinkers to serene blue coves.', 4.9, 'Kölsch');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Prairie Phoenix Pilsner', 'A crisp and effervescent pilsner that rises from the depths of traditional brewing techniques, showcasing sharp hoppy notes amidst a malty backbone.', 5.0, 'Pilsner');

INSERT INTO beer (beer_id, beer_name, description, abv, beer_type) 
VALUES (DEFAULT, 'Eldritch Ember ESB', 'A beer that evokes the warmth of an ember''s glow, it perfectly balances the bitterness of traditional hops with the caramel sweetness of malt.', 5.6, 'Extra Special Bitter (ESB)');

INSERT INTO brewery_beer (brewery_id, beer_id)
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Happy Times Brewing'), (SELECT beer_id FROM beer WHERE beer_name = 'Golden Gryphon Ale'));

INSERT INTO brewery_beer (brewery_id, beer_id)
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Happy Times Brewing'), (SELECT beer_id FROM beer WHERE beer_name = 'Cerulean Cove Kölsch'));

INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 9, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 10, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 6, 2);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 7, 2);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 5, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 4, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 1, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (3, 2, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (4, 3, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (4, 2, 1);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (5, 3, 2);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (5, 4, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (5, 5, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (5, 7, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (5, 6, 1);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 1, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 7, 2);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 3, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 8, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 9, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (6, 10, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 10, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 9, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 8, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 7, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 6, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 5, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 4, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 3, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 2, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (7, 1, 5);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 1, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 2, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 3, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 4, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 5, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 6, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 7, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 8, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 9, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (8, 10, 4);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 10, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 9, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 8, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 7, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 6, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 5, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 4, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 3, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 2, 3);
INSERT INTO rating (user_id, beer_id, amount)
VALUES (9, 1, 1);




--INSERT INTO day(name)
--VALUES('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday')
COMMIT TRANSACTION;
