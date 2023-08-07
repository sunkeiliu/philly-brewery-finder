BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery_beer;
DROP TABLE IF EXISTS beer;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE brewery (
	brewery_id SERIAL PRIMARY KEY,
	brewer int,
	brewery_name varchar(200),
	hours varchar(200),
--	open_time time
--	close_time time
	contact_info varchar(500),
	address varchar(300),
	history varchar(1000),
	active boolean
);

CREATE TABLE beer (
	beer_id SERIAL PRIMARY KEY,
	beer_name varchar(200),
	brewery int,
	description varchar(600),
	abv decimal(4,2),
	beer_type varchar(100),
	CONSTRAINT fk_beer_brewery FOREIGN KEY (brewery) REFERENCES brewery(brewery_id)
);

CREATE TABLE brewery_beer (
	brewery_id int,
	beer_id int,
	CONSTRAINT pk_brewery_beer PRIMARY KEY (brewery_id, beer_id),
	CONSTRAINT fk_brewery_beer_brewery_id FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id),
	CONSTRAINT fk_brewery_beer_beer_id FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);

CREATE TABLE review (
    review_id SERIAL PRIMARY KEY,
    user_id int,
    beer_id int,
    title varchar(200),
    description varchar(1000),
    brewer_response varchar(1000),
    CONSTRAINT fk_review_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_review_beer_id FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);

CREATE TABLE rating (
    user_id int,
    beer_id int,
    amount int,
    CONSTRAINT pk_rating PRIMARY KEY (user_id, beer_id),
    CONSTRAINT fk_rating_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_rating_beer_id FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);

CREATE TABLE event (
    event_id SERIAL PRIMARY KEY,
    brewery_id int,
    title varchar(100),
    text varchar(2000),
    event_time timestamp,
    CONSTRAINT fk_event_brewery_id FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

CREATE TABLE blog (
    blog_id SERIAL PRIMARY KEY,
    brewery_id int,
    title varchar(100),
    text varchar(2000),
    event_time timestamp,
    CONSTRAINT fk_blog_brewery_id FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

CREATE TABLE update_info (
    update_id SERIAL PRIMARY KEY,
    brewery_id int,
    title varchar(100),
    text varchar(2000),
    update_date date,
    CONSTRAINT fk_update_info_brewery_id FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

COMMIT TRANSACTION;
