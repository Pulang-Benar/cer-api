CREATE TABLE panic.panic_location (
	location_uuid varchar(36) NOT NULL,
	latitude varchar(100) NOT NULL,
	longitude varchar(100) NOT NULL,
	formatted_address text,
	area varchar(250),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	PRIMARY KEY (location_uuid)
);
CREATE TABLE panic.panic_device (
	device_uuid varchar(36) NOT NULL,
	device_id varchar(100),
	device_name varchar(100),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	PRIMARY KEY (device_uuid)
);
CREATE TABLE panic.panic_report (
	panic_code varchar(50) NOT NULL,
	username varchar(25) NOT NULL,
	fullname varchar(75) NOT NULL,
	gender varchar(20) NOT NULL,
	age int NOT NULL,
	phone_number varchar(20) NOT NULL,
	id_number varchar(50) NOT NULL,
	latest_latitude varchar(100) NOT NULL,
	latest_longitude varchar(100) NOT NULL,
	latest_formatted_address text,
	latest_area varchar(250),
	latest_file_checksum varchar(36),
	latest_device_id varchar(100),
	latest_device_name varchar(100),
	urgency_category varchar(200),
	status varchar(200),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	PRIMARY KEY (panic_code)
);
CREATE TABLE panic.panic_detail (
	panic_detail_uuid varchar(36) NOT NULL,
	file_checksum varchar(36),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	panic_code varchar(50),
	device_uuid varchar(36),
	location_uuid varchar(36),
	PRIMARY KEY (panic_detail_uuid)
);
CREATE TABLE panic.fake_report (
	fake_code varchar(50) NOT NULL,
	username varchar(25) NOT NULL,
	fullname varchar(75) NOT NULL,
	gender varchar(20) NOT NULL,
	age int NOT NULL,
	phone_number varchar(20) NOT NULL,
	id_number varchar(50) NOT NULL,
	latest_latitude varchar(100) NOT NULL,
	latest_longitude varchar(100) NOT NULL,
	latest_formatted_address text,
	latest_area varchar(250),
	latest_file_checksum varchar(36),
	latest_device_id varchar(100),
	latest_device_name varchar(100),
	urgency_category varchar(200),
	status varchar(200),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	PRIMARY KEY (fake_code)
);
CREATE TABLE panic.fake_detail (
	fake_detail_uuid varchar(36) NOT NULL,
	file_checksum varchar(36),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	fake_code varchar(50),
	device_uuid varchar(36),
	location_uuid varchar(36),
	PRIMARY KEY (fake_detail_uuid)
);

ALTER TABLE panic.panic_detail
	ADD FOREIGN KEY (panic_code) 
	REFERENCES panic.panic_report (panic_code);

ALTER TABLE panic.panic_detail
	ADD FOREIGN KEY (device_uuid) 
	REFERENCES panic.panic_device (device_uuid);

ALTER TABLE panic.panic_detail
	ADD FOREIGN KEY (location_uuid) 
	REFERENCES panic.panic_location (location_uuid);

ALTER TABLE panic.fake_detail
	ADD FOREIGN KEY (fake_code) 
	REFERENCES panic.fake_report (fake_code);

ALTER TABLE panic.fake_detail
	ADD FOREIGN KEY (device_uuid) 
	REFERENCES panic.panic_device (device_uuid);

ALTER TABLE panic.fake_detail
	ADD FOREIGN KEY (location_uuid) 
	REFERENCES panic.panic_location (location_uuid);