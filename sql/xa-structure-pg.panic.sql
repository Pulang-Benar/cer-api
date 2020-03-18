CREATE TABLE panic.cer_location (
	location_uuid varchar(36) NOT NULL,
	latitude varchar(100) NOT NULL,
	longitude varchar(100) NOT NULL,
	area varchar(250),
	formatted_address text,
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	PRIMARY KEY (location_uuid)
);
CREATE TABLE panic.cer_device (
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
	panic_uuid varchar(36) NOT NULL,
	username varchar(25) NOT NULL,
	file_checksum varchar(36),
	urgency_name varchar(200),
	status_name varchar(200),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	device_uuid varchar(36),
	location_uuid varchar(36),
	PRIMARY KEY (panic_uuid)
);
CREATE TABLE panic.fake_report (
	fake_uuid varchar(36) NOT NULL,
	username varchar(25) NOT NULL,
	file_checksum varchar(36),
	urgency_name varchar(200),
	status_name varchar(200),
	"version" int DEFAULT 0 NOT NULL,
	is_active boolean DEFAULT true NOT NULL,
	created_date timestamp DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25),
	modified_date timestamp,
	modified_by varchar(25),
	device_uuid varchar(36),
	location_uuid varchar(36),
	PRIMARY KEY (fake_uuid)
);

ALTER TABLE panic.panic_report
	ADD FOREIGN KEY (device_uuid) 
	REFERENCES panic.cer_device (device_uuid);

ALTER TABLE panic.panic_report
	ADD FOREIGN KEY (location_uuid) 
	REFERENCES panic.cer_location (location_uuid);

ALTER TABLE panic.fake_report
	ADD FOREIGN KEY (device_uuid) 
	REFERENCES panic.cer_device (device_uuid);

ALTER TABLE panic.fake_report
	ADD FOREIGN KEY (location_uuid) 
	REFERENCES panic.cer_location (location_uuid);