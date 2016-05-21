-- Database creation script
-- 

--DROP DATABASE ridesurf;
CREATE DATABASE ridesurf;

\c ridesurf

CREATE TABLE profile (
    id serial,
    username varchar not null,
    firstname varchar not null,
    lastname varchar not null,
    email varchar not null,
    car_type varchar
);

CREATE TABLE profile_review (
    reviewer_id integer not null,
    reviewee_id integer not null,
    rating integer not null,
    description text
);

CREATE TABLE trip (
    id serial,
    name varchar, -- human-readable, non-unique name
    start_time timestamp,
    end_time timestamp
);

CREATE TABLE trip_member (
    trip_id integer not null,
    profile_id integer not null
    -- do we specify driver here or in trip?
);

CREATE TABLE trip_location (
    trip_id integer not null,
    location_id integer not null,
    position integer not null -- 0 for start, 1 for first stop, ... maybe -1 for end?
);


CREATE TABLE location (
    private boolean not null,
    name varchar not null,
    address varchar not null,
    lat real,
    lon real
);

-- reviewing location also serves the purpose as marking it as a favorite
CREATE TABLE location_review (
    reviewer_id integer not null,
    location_id integer not null,
    rating integer not null,
    description text
);

CREATE TABLE profile_location (
    profile_id integer not null,
    location_id integer not null,
    name varchar not null, -- e.g., 'home', 'work'
    main boolean not null -- main locations are listed first
);

CREATE TABLE profile_interest (
    profile_id integer not null,
    interest_id integer not null
);

CREATE TABLE interest (
    id serial,
    name varchar not null
);

INSERT INTO interest (name) VALUES ('hiking');
INSERT INTO interest (name) VALUES ('climbing');
INSERT INTO interest (name) VALUES ('mountain biking');
INSERT INTO interest (name) VALUES ('skiing');
INSERT INTO interest (name) VALUES ('snowboarding');
INSERT INTO interest (name) VALUES ('snowshoeing');
INSERT INTO interest (name) VALUES ('surfing');
INSERT INTO interest (name) VALUES ('urbaneering');

