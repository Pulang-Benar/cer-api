--
-- Dumping data for table mst_locale
--

INSERT INTO master.mst_locale (locale_uuid, locale_code, locale_identifier, locale_icon, locale_default, locale_enabled, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('6a6ae290-7c33-46bd-a05a-f6f3964e4cb4', 'en-US', 'English (United States)', 'flag-icon flag-icon-us', true, true, 0, true, '2018-12-04 08:59:55', NULL, NULL, NULL),
('061e3d94-bfef-4e5f-bb24-735ba18e435f', 'id-ID', 'Indonesian (Indonesia)', 'flag-icon flag-icon-id', false, true, 0, true, '2018-12-04 08:59:55', NULL, NULL, NULL);

--
-- Dumping data for table mst_parameter_group
--

INSERT INTO master.mst_parameter_group (parameter_group_uuid, parameter_group_code, parameter_group_name, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('a34ce03b-35e5-40d7-9e95-47cb77cf623a', 'GENDER', 'Gender', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL),
('799bcdcb-b922-4fee-8266-6cd1e2142492', 'FILE_EXCLUSION', 'File Exclusion', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL),
('c1e38b92-ab8c-4925-bc42-3a5acfd3b162', 'EMERGENCY', 'Category Emergency', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL),
('7deaaf87-d64e-4b5b-9a91-ab8db58902cb', 'RELATIONSHIP', 'Relationship', 0, true, '2018-12-05 11:45:42', NULL, NULL, NULL);

--
-- Dumping data for table mst_parameter
--

INSERT INTO master.mst_parameter (parameter_uuid, parameter_code, "version", is_active, created_date, created_by, modified_date, modified_by, parameter_group_uuid) VALUES
('eb8c8621-c79c-4f1b-bd77-757d5ed106e5', 'GENDER.MALE', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'a34ce03b-35e5-40d7-9e95-47cb77cf623a'),
('f6dd4b90-6c06-4066-84a3-0599d1a06003', 'GENDER.FEMALE', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'a34ce03b-35e5-40d7-9e95-47cb77cf623a'),
('d78712b5-6c1e-498f-9981-9beb6d0997c5', 'FILE_EXCLUSION.EXE', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('112cf342-b9c9-4139-9a58-3cdfb5c68e07', 'FILE_EXCLUSION.BASH', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('56bee47f-7304-439d-9295-67d2b323a1ef', 'FILE_EXCLUSION.SH', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('453c7792-244e-41a7-b064-a2ab362fbbf1', 'FILE_EXCLUSION.BAT', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '799bcdcb-b922-4fee-8266-6cd1e2142492'),
('4fd59970-f3bd-484e-9098-6ff5ad17137b', 'EMERGENCY.FIRE', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('3912c634-5e7d-455b-9d06-1c34285d8870', 'EMERGENCY.ABDUCTION', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('f2aa8a47-d509-4fa1-8c83-f7840f25d046', 'EMERGENCY.THEFT', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('8b288bbd-6aee-4170-b29e-4eeefe8fc574', 'EMERGENCY.HER', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('baa612fe-e587-444a-9dcb-14401dcdaf79', 'EMERGENCY.UNREST', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('13a20c8b-f6ff-4470-82d4-290f6acc4ba2', 'EMERGENCY.HARASSMENT', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('5dfe381b-b79e-483d-9bab-05ba10234baf', 'EMERGENCY.THREAT', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('43b24cc9-8605-44d5-8945-735b3fa83ab7', 'EMERGENCY.BULLYING', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('cb66c666-0ce6-458d-bb53-8000296f7af8', 'EMERGENCY.OTHERS', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, 'c1e38b92-ab8c-4925-bc42-3a5acfd3b162'),
('4acfe901-8ec9-4e8c-8420-7f494cf2854b', 'RELATIONSHIP.PARENT', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '7deaaf87-d64e-4b5b-9a91-ab8db58902cb'),
('36df4a74-66c4-4461-97fd-76b0d65af856', 'RELATIONSHIP.SIBLING', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '7deaaf87-d64e-4b5b-9a91-ab8db58902cb'),
('6a899845-9cfd-4b48-9735-b31ee8b86a41', 'RELATIONSHIP.COUPLE', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '7deaaf87-d64e-4b5b-9a91-ab8db58902cb'),
('49d1da00-b4de-4bd5-b447-f59d2674359c', 'RELATIONSHIP.CHILD', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '7deaaf87-d64e-4b5b-9a91-ab8db58902cb'),
('83c2f7fc-6cf6-4240-887d-c8d242bf1654', 'RELATIONSHIP.OTHERS', 0, true, '2018-12-05 11:46:40', NULL, NULL, NULL, '7deaaf87-d64e-4b5b-9a91-ab8db58902cb');

--
-- Dumping data for table mst_parameter_i18n
--

INSERT INTO master.mst_parameter_i18n (parameter_i18n_uuid, parameter_uuid, locale_code, parameter_value, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('1642d182-027c-4d5a-9ac4-4ca81ba8ab0b', 'eb8c8621-c79c-4f1b-bd77-757d5ed106e5', 'en-US', 'Male', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('c9bedf56-b338-4bce-83c7-145603a0a902', 'f6dd4b90-6c06-4066-84a3-0599d1a06003', 'en-US', 'Female', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('c5939c36-1ae1-4380-91ce-3ac7fee85ddd', 'd78712b5-6c1e-498f-9981-9beb6d0997c5', 'en-US', 'exe', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('fac9bc48-85f7-480b-89ad-33a0fd194da6', '112cf342-b9c9-4139-9a58-3cdfb5c68e07', 'en-US', 'bash', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('83f97f15-7ff5-46aa-80ca-3db7c63fd41d', '56bee47f-7304-439d-9295-67d2b323a1ef', 'en-US', 'sh', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('c9760068-5664-4340-a7ee-724d3aff13d9', '453c7792-244e-41a7-b064-a2ab362fbbf1', 'en-US', 'bat', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('f590e9a7-1498-45cb-be3a-f610f36d26b9', '4fd59970-f3bd-484e-9098-6ff5ad17137b', 'en-US', 'Fire', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('18c6cd47-0e5a-4c12-b3d2-49856a2c81bb', '3912c634-5e7d-455b-9d06-1c34285d8870', 'en-US', 'Abduction', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('4e7741fb-2b01-424f-beb1-b4c9d2fa35fb', 'f2aa8a47-d509-4fa1-8c83-f7840f25d046', 'en-US', 'Theft', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('4da624e4-6877-492f-ac45-81513063c544', '8b288bbd-6aee-4170-b29e-4eeefe8fc574', 'en-US', 'Hospital Emergency Room', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('62c91a0e-f5a9-43ba-905f-8900a21deb39', 'baa612fe-e587-444a-9dcb-14401dcdaf79', 'en-US', 'Unrest', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('9c03153d-d2f1-4c91-bfc2-f739eaed7849', '13a20c8b-f6ff-4470-82d4-290f6acc4ba2', 'en-US', 'Sexual Harassment', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('26582678-ffd9-47d1-bd17-a46bbebcd124', '5dfe381b-b79e-483d-9bab-05ba10234baf', 'en-US', 'Threat', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('0cd450aa-b463-42c1-b733-50612c7e47fc', '43b24cc9-8605-44d5-8945-735b3fa83ab7', 'en-US', 'Bullying', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('4119a8d7-b3a4-4c38-ad64-1d4f86728261', 'cb66c666-0ce6-458d-bb53-8000296f7af8', 'en-US', 'Others', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('4716f585-fabd-4b8a-8af5-27cd44a99889', '4acfe901-8ec9-4e8c-8420-7f494cf2854b', 'en-US', 'Parents', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('d44c5ef7-5c62-4ece-bb87-b599065cd7c0', '36df4a74-66c4-4461-97fd-76b0d65af856', 'en-US', 'Sibling', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('8d749dd4-c800-4bb9-9a72-1e4cfc2c3e74', '6a899845-9cfd-4b48-9735-b31ee8b86a41', 'en-US', 'Couple', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('d223552d-faa9-462e-be7f-febd964d0189', '49d1da00-b4de-4bd5-b447-f59d2674359c', 'en-US', 'Child', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('66aec610-dbee-4c12-bb53-345033c55806', '83c2f7fc-6cf6-4240-887d-c8d242bf1654', 'en-US', 'Other', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL);

INSERT INTO master.mst_parameter_i18n (parameter_i18n_uuid, parameter_uuid, locale_code, parameter_value, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('4e1cf97d-da2b-4502-a8fb-8b7c56685061', 'eb8c8621-c79c-4f1b-bd77-757d5ed106e5', 'id-ID', 'Pria', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('fc74760b-a4f3-48db-a3a8-3fe2e230d3bd', 'f6dd4b90-6c06-4066-84a3-0599d1a06003', 'id-ID', 'Wanita', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('5ea3b8b0-183b-47f2-810d-d55f02b641b8', 'd78712b5-6c1e-498f-9981-9beb6d0997c5', 'id-ID', 'exe', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('82ffcf47-9b4e-4ee4-bad9-7a80c0c0d083', '112cf342-b9c9-4139-9a58-3cdfb5c68e07', 'id-ID', 'bash', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('90c1c549-ba76-4a6c-a261-3b26d7200e96', '56bee47f-7304-439d-9295-67d2b323a1ef', 'id-ID', 'sh', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('1e16b8fb-7441-41b0-ae5c-6418ef66f628', '453c7792-244e-41a7-b064-a2ab362fbbf1', 'id-ID', 'bat', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('3d74524c-bd9e-4312-8380-d53c2149dbe1', '4fd59970-f3bd-484e-9098-6ff5ad17137b', 'id-ID', 'Kebakaran', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('85288eb7-b9a5-4bfb-b44c-6242253dd5db', '3912c634-5e7d-455b-9d06-1c34285d8870', 'id-ID', 'Penculikan', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('007279b3-d38b-4687-a400-8f9000f850ad', 'f2aa8a47-d509-4fa1-8c83-f7840f25d046', 'id-ID', 'Pencurian', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('37d53ee8-e3ca-4d64-bfa6-e3353801070d', '8b288bbd-6aee-4170-b29e-4eeefe8fc574', 'id-ID', 'UGD', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('21242b73-96e1-48eb-ac1a-5ee438e70b25', 'baa612fe-e587-444a-9dcb-14401dcdaf79', 'id-ID', 'Kerusuhan', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('edbd4cff-3e68-4151-bfb2-d0503772f5dd', '13a20c8b-f6ff-4470-82d4-290f6acc4ba2', 'id-ID', 'Pelecehan Seksual', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('ff269687-1756-42dc-8a6e-6db124657ab6', '5dfe381b-b79e-483d-9bab-05ba10234baf', 'id-ID', 'Ancaman', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('3b48e4d7-e24b-4cf0-9bdc-852d13ee16da', '43b24cc9-8605-44d5-8945-735b3fa83ab7', 'id-ID', 'Intimidasi', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('7f060226-f42b-4650-afb5-ebf2bb24a2ef', 'cb66c666-0ce6-458d-bb53-8000296f7af8', 'id-ID', 'Lainnya', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),

('ff174243-0b60-4308-9365-5bd3bc009812', '4acfe901-8ec9-4e8c-8420-7f494cf2854b', 'id-ID', 'Orang Tua', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('2f6642f6-3c5a-4bcc-8ff5-affac6038b04', '36df4a74-66c4-4461-97fd-76b0d65af856', 'id-ID', 'Saudara', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('8735a1fb-91b0-474b-9189-dde837e4277f', '6a899845-9cfd-4b48-9735-b31ee8b86a41', 'id-ID', 'Pasangan', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('c76e2b8a-ed19-418c-aaa4-3c86069c1492', '49d1da00-b4de-4bd5-b447-f59d2674359c', 'id-ID', 'Anak', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL),
('34f57155-0670-410a-a336-acd815ec3b3a', '83c2f7fc-6cf6-4240-887d-c8d242bf1654', 'id-ID', 'Lainnya', 0, true, '2018-12-05 11:48:40', NULL, NULL, NULL);