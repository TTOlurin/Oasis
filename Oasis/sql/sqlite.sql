CREATE TABLE users(
  user_id integer primary key autoincrement,
  userName varchar(50),
  email varchar(50),
  password varchar(20),
  rating number() FOREIGN KEY
  CONSTRAINT fk_reviews
    FOREIGN KEY (rating)
    REFERENCES review(review_id)
);

CREATE TABLE reviews {
    review_id integer PRIMARY KEY AUTOINCREMENT,
    review_score number(2,2),
    review_comment varchar(200)
};

CREATE TABLE properties {
    property_id PRIMARY KEY AUTOINCREMENT,
    address         varchar(50),
    city            varchar(50),
    country         varchar(50),
    rooms           number(2),
    bathrooms       number(2),
    pet_friendly    boolean()
    wifi            boolean()
    owner_id        integer,
    CONSTRAINT fk_users
    FOREIGN KEY (owner_id)
    REFERENCES users(user_id)
};