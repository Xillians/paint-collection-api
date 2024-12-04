-- table for paint brands
create table if not exists paint_brands (
    id integer primary key autoincrement,
    name varchar(255) not null unique,
    created_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')) ,
    updated_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')) 
);

-- table for users
create table if not exists users (
    id integer primary key autoincrement,
    google_user_id varchar(255) not null unique,
    email varchar(255) not null unique,
    created_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')),
    updated_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')) 
);

-- table for all paints
create table if not exists paints (
    id integer primary key autoincrement,
    name varchar(255) not null,
    brand_id integer,
    color_code varchar(50),
    description text,
    created_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')),
    updated_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')),
    foreign key (brand_id) references paint_brands(id)
);

-- table for total paint collection
create table if not exists paint_collection (
    id integer primary key autoincrement,
    user_id integer,
    paint_id integer,
    quantity integer default 1,
    created_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')),
    updated_at timestamp default (strftime('%Y-%m-%d %H:%M:%f', 'NOW')),
    foreign key (user_id) references users(id),
    foreign key (paint_id) references paints(id)
);