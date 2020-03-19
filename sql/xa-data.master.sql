--
-- Dumping data for table mst_locale
--

INSERT INTO master.mst_locale (locale_uuid, locale_code, locale_identifier, locale_icon, locale_default, locale_enabled, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('061e3d94-bfef-4e5f-bb24-735ba18e435f', 'id-ID', 'Indonesian (Indonesia)', 'id', false, true, 0, true, '2018-12-04 08:59:55', NULL, NULL, NULL),
('6a6ae290-7c33-46bd-a05a-f6f3964e4cb4', 'en-US', 'English (United States)', 'us', true, true, 0, true, '2018-12-04 08:59:55', NULL, NULL, NULL);

--
-- Dumping data for table mst_parameter_group
--

INSERT INTO master.mst_parameter_group (parameter_group_uuid, parameter_group_code, parameter_group_name, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('a34ce03b-35e5-40d7-9e95-47cb77cf623a', 'GENDER', 'Gender', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL),
('799bcdcb-b922-4fee-8266-6cd1e2142492', 'FILE_EXCLUSION', 'File Exclusion', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL),
('c1e38b92-ab8c-4925-bc42-3a5acfd3b162', 'STATUS_EMERGENCY_REPORT', 'Status Emergency Report', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL);

--
-- Dumping data for table mst_parameter
--

INSERT INTO master.mst_parameter (parameter_uuid, parameter_code, parameter_value, "version", is_active, created_date, created_by, modified_date, modified_by, parameter_group_uuid) VALUES
('eb8c8621-c79c-4f1b-bd77-757d5ed106e5', 'GENDER.MALE', 'Male', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'a34ce03b-35e5-40d7-9e95-47cb77cf623a'),
('f6dd4b90-6c06-4066-84a3-0599d1a06003', 'GENDER.FEMALE', 'Female', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'a34ce03b-35e5-40d7-9e95-47cb77cf623a'),
('d78712b5-6c1e-498f-9981-9beb6d0997c5', 'EXE', 'exe', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('112cf342-b9c9-4139-9a58-3cdfb5c68e07', 'BASH', 'bash', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('56bee47f-7304-439d-9295-67d2b323a1ef', 'SH', 'sh', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('453c7792-244e-41a7-b064-a2ab362fbbf1', 'BAT', 'bat', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('4fd59970-f3bd-484e-9098-6ff5ad17137b', 'FIRE', 'Fire', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('3912c634-5e7d-455b-9d06-1c34285d8870', 'ABDUCTION', 'Abduction', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('f2aa8a47-d509-4fa1-8c83-f7840f25d046', 'THEFT', 'Theft', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('8b288bbd-6aee-4170-b29e-4eeefe8fc574', 'HER', 'Hospital Emergency Room', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('baa612fe-e587-444a-9dcb-14401dcdaf79', 'UNREST', 'Unrest', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('13a20c8b-f6ff-4470-82d4-290f6acc4ba2', 'HARASSMENT', 'Sexual Harassment', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162');

--
-- Dumping data for table mst_parameter_i18n
--

INSERT INTO master.mst_parameter_i18n (parameter_i18n_uuid, parameter_uuid, locale_uuid, parameter_value, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('4e1cf97d-da2b-4502-a8fb-8b7c56685061', 'eb8c8621-c79c-4f1b-bd77-757d5ed106e5', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Pria', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('fc74760b-a4f3-48db-a3a8-3fe2e230d3bd', 'f6dd4b90-6c06-4066-84a3-0599d1a06003', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Wanita', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('13a20c8b-f6ff-4470-82d4-290f6acc4ba2', '4fd59970-f3bd-484e-9098-6ff5ad17137b', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Kebakaran', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('85288eb7-b9a5-4bfb-b44c-6242253dd5db', '3912c634-5e7d-455b-9d06-1c34285d8870', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Penculikan', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('007279b3-d38b-4687-a400-8f9000f850ad', 'f2aa8a47-d509-4fa1-8c83-f7840f25d046', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Pencurian', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('37d53ee8-e3ca-4d64-bfa6-e3353801070d', '8b288bbd-6aee-4170-b29e-4eeefe8fc574', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'UGD', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('21242b73-96e1-48eb-ac1a-5ee438e70b25', 'baa612fe-e587-444a-9dcb-14401dcdaf79', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Kerusuhan', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('edbd4cff-3e68-4151-bfb2-d0503772f5dd', '13a20c8b-f6ff-4470-82d4-290f6acc4ba2', '061e3d94-bfef-4e5f-bb24-735ba18e435f', 'Pelecehan Seksual', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL);
