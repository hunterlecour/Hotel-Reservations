
CREATE TABLE `bookings` (
    `row_id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `hotel` VARCHAR(50) NOT NULL,
    `is_canceled` TINYINT NOT NULL,
    `lead_time` INT NOT NULL,
    `arrival_date` DATE NOT NULL,
    `days_in_stay` INT NOT NULL,
    `adults` INT NOT NULL,
    `children` INT NOT NULL,
    `babies` INT NOT NULL,
    `meal_id` INT NOT NULL,
    `country_code` CHAR(3) NOT NULL,
    `segment_id` INT NOT NULL,
    `channel_id` INT NOT NULL,
    `is_repeated_guest` TINYINT NOT NULL,
    `previous_bookings_not_canceled` INT NOT NULL,
    `reserved_room_type` CHAR(1) NOT NULL,
    `assigned_room_type` CHAR(1) NOT NULL,
    `agent_id` INT,
    `company_id` INT,
    `customer_type_id` INT NOT NULL,
    `adr` DECIMAL(10 , 2 ) NOT NULL,
    `required_car_parking_spaces` INT NOT NULL,
    `total_of_special_requests` INT NOT NULL,
    `reservation_status` VARCHAR(50) NOT NULL
);

CREATE TABLE `meals` (
    `meal_id` int  NOT NULL ,
    `meal` varchar(50)  NOT NULL 
);

CREATE TABLE `countries` (
    `alpha_2_code` char(2)  NOT NULL ,
    `alpha_3_code` char(3)  NOT NULL ,
    `country` varchar(100)  NOT NULL ,
    `numeric_code` int  NOT NULL ,
    `latitude_avg` float  NOT NULL ,
    `longitude_avg` float  NOT NULL 
);

CREATE TABLE `segments` (
    `segment_id` int  NOT NULL ,
    `market_segment` varchar(50)  NOT NULL 
);

CREATE TABLE `channels` (
    `channel_id` int  NOT NULL ,
    `distribution_channel` varchar(50)  NOT NULL 
);

CREATE TABLE `agents` (
    `agent_id` int  NOT NULL ,
    `agent_name` varchar(50)  NOT NULL 
);

CREATE TABLE `companies` (
    `company_id` int  NOT NULL ,
    `company_name` varchar(250)  NOT NULL 
);

CREATE TABLE `customer_types` (
    `customer_type_id` int  NOT NULL ,
    `customer_type` varchar(50)  NOT NULL 
);
