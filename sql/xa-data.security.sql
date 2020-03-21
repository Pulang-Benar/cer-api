--
-- Dumping data for table sec_role
--

INSERT INTO security.sec_role (role_uuid, role_name, description, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('06be80df-5c41-42a7-9050-b328312d2f3a', 'ROLE_ADMIN', 'Role Administrator', 0, true, '2018-12-02 20:52:28', NULL, NULL, NULL),
('d68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'ROLE_END', 'Role End User', 0, true, '2018-12-03 11:57:36', NULL, NULL, NULL);

--
-- Dumping data for table sec_user
--

INSERT INTO security.sec_user (user_uuid, username, password, account_enabled, account_non_expired, account_non_locked, credentials_non_expired, email, verification_code, raw, authority_default, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'admin', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'admin_cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'user', '$2a$13$SFGnAPHD/fP9BlNQU7drpeAKxFFgk9pDBIR5D4mb17RbNzKcU6K8S', true, true, true, true, 'user_cer@mailinator.com', NULL, NULL, 'ROLE_END', 0, true, '2018-12-05 14:50:55', NULL, NULL, NULL);

--
-- Dumping data for table oauth_client_details
-- xa-core = secretxa01
-- xa-mobile = secretxa02
--

INSERT INTO security.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES
('xa-core', 'profile,security,master,notification,general,file,report', '$2a$13$NrN1v1S4p0UsM8zDdvcUUeHqeUwmGbrobBaUwCO.eiIDVsIbIX5gy', 'read,write,trust,check_token', 'password,refresh_token', '', 'ROLE_ADMIN,ROLE_END', 3600, 7200, NULL, '1'),
('xa-mobile', 'profile,security,master', '$2a$13$jqHw2BuGwJsZXf.eF3XVlOgGxkquOGx4vRDL6ll8UUyr0wEj03YLO', 'read,write,check_token', 'password,refresh_token', '', 'ROLE_END', 3600, 7200, NULL, '1');

--
-- Dumping data for table sec_corporate
--

INSERT INTO security.sec_corporate(corporate_uuid, corporate_id, corporate_name, corporate_non_expired, email, address, telp_number) VALUES
('0ae4b095-d957-4ff1-a34d-7a440cc8d8ca', 'CER', 'Civilians Emergency Report', true, 'admin_cer@mailinator.com', 'Jakarta', '+21 2221 9967');

--
-- Dumping data for table sec_menu
--

INSERT INTO security.sec_menu (menu_uuid, code, url, "level", ordering, ordering_str, icon, is_leaf, is_home, is_group, "version", is_active, created_date, created_by, modified_date, modified_by, parent_uuid) VALUES
('b9029fd3-44cd-479c-965d-a8da1bfb20eb', '#DASHBOARD-PAGE', '/app/dashboard', 0, 0, '000', 'home-outline', false, true, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('77687148-0cda-4a4a-96f1-900cd986c326', NULL, '#', 0, 1, '001', 'pie-chart-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', '#STATISTICS-AREA-PAGE', '/app/statistics/area', 1, 0, '001.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('b2a03772-10d7-4ec5-bb68-99f2d6080cea', '#STATISTICS-GENDER-PAGE', '/app/statistics/gender', 1, 1, '001.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('98a1bd05-2c42-47c4-afb7-9540f04e16b4', '#STATISTICS-PERIODE-PAGE', '/app/statistics/periode', 1, 2, '001.002', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('b03f9702-44a4-44b1-86f2-7f03d070b35b', '#STATISTICS-AGE-PAGE', '/app/statistics/age', 1, 3, '001.003', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '77687148-0cda-4a4a-96f1-900cd986c326'),
('5f4872f1-627e-4789-adf7-dc6db3884267', NULL, '#', 0, 2, '002', 'file-text-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('645d5b77-1c4e-402d-b095-185412def6f5', '#REPORT-AREA-PAGE', '/app/report/area', 1, 0, '002.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267'),
('6fd757ea-b0cf-4d12-a25a-f446aae78057', '#REPORT-GENDER-PAGE', '/app/report/gender', 1, 1, '002.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267'),
('542a2e77-6722-4d09-b5e3-ddf692431213', '#REPORT-PERIODE-PAGE', '/app/report/periode', 1, 2, '002.002', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267'),
('0019a3e6-86ed-46d4-b6b2-e9525385c65f', '#REPORT-AGE-PAGE', '/app/report/age', 1, 3, '002.003', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '5f4872f1-627e-4789-adf7-dc6db3884267'),
('e76e6cfa-5ef2-4bc4-b5d4-dac5353d071c', '#FAKE-REPORTS-PAGE', '/app/fake-reports', 0, 3, '003', 'slash-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8', '#USER-MANAGEMENT-PAGE', '/app/user-management', 0, 4, '004', 'people-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('3cf5bced-7def-426a-99f7-c8d44e1ce74c', NULL, '#', 0, 5, '005', 'settings-2-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('8c66c75e-5931-40af-af28-7c60b366ffd4', '#SYSCONF-PARAMETER-PAGE', '/app/sysconf/parameter', 1, 0, '005.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '3cf5bced-7def-426a-99f7-c8d44e1ce74c'),
('b81076bf-dda0-4278-b639-ba6f750eb8c9', '#SYSCONF-LANGUAGE-PAGE', '/app/sysconf/language', 1, 1, '005.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, '3cf5bced-7def-426a-99f7-c8d44e1ce74c');
--- Extra Menu
INSERT INTO security.sec_menu (menu_uuid, code, url, "level", ordering, ordering_str, "type", icon, is_leaf, is_home, is_group, "version", is_active, created_date, created_by, modified_date, modified_by, parent_uuid) VALUES
('59e7e128-fe95-48d4-97a9-5441ae3d320c', '#PROFILE-PAGE', '/app/user/profile', 0, 0, '100', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', '#SECURITY-PAGE', '/app/user/security', 0, 1, '101', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('1de67261-d2f9-4a01-bba2-68db9b3ad8c3', '#SETTINGS-PAGE', '/app/user/settings', 0, 2, '102', 'extra', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL);

--
-- Dumping data for table sec_menu_i18n
--

INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('2a44a77e-a7f0-4bec-a0a5-ae02a0a39ee9', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'en-US', 'Dashboard', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('28fa2833-f5aa-4eaf-a1f8-cec30efec97f', '77687148-0cda-4a4a-96f1-900cd986c326', 'en-US', 'Statistics', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('27a55e31-1543-4db2-aea2-383bad1f637e', '079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', 'en-US', 'Area', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('027efb44-9365-47e1-802c-98377029a5f5', 'b2a03772-10d7-4ec5-bb68-99f2d6080cea', 'en-US', 'Gender', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('39ac18b5-3ae7-40f1-99f2-02b5feb65041', '98a1bd05-2c42-47c4-afb7-9540f04e16b4', 'en-US', 'Periode', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('414da98e-9d37-4821-9f37-c0d9c308cf6c', 'b03f9702-44a4-44b1-86f2-7f03d070b35b', 'en-US', 'Age', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('79ab6061-080d-4ed4-a5b2-dbf3c2aa2d28', '5f4872f1-627e-4789-adf7-dc6db3884267', 'en-US', 'Reports', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('c4dbb64e-3ad6-4675-8b9f-0764e7de0134', '645d5b77-1c4e-402d-b095-185412def6f5', 'en-US', 'Area', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('a1ebf59a-6e73-49b1-b460-904fd70c9a45', '6fd757ea-b0cf-4d12-a25a-f446aae78057', 'en-US', 'Gender', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('dafca136-c23b-47ba-bd97-b2c615445d8e', '542a2e77-6722-4d09-b5e3-ddf692431213', 'en-US', 'Periode', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('705c4d11-48be-4ad1-b65e-51a43e2f3d8b', '0019a3e6-86ed-46d4-b6b2-e9525385c65f', 'en-US', 'Age', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('92aefcd3-8556-4e6d-97a6-19005be74491', 'e76e6cfa-5ef2-4bc4-b5d4-dac5353d071c', 'en-US', 'Fake Reports', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('de490bc6-c52e-4b9e-9157-e881b9203886', 'f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8', 'en-US', 'User Management', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('14306a74-a7ba-42f9-8bfe-600e95ffa3b3', '3cf5bced-7def-426a-99f7-c8d44e1ce74c', 'en-US', 'System Configuration', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('1afe5dbe-3519-452f-8060-615541116f0d', '8c66c75e-5931-40af-af28-7c60b366ffd4', 'en-US', 'Parameter', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('fb616657-b89d-4540-89bf-9a87ebf7ac83', 'b81076bf-dda0-4278-b639-ba6f750eb8c9', 'en-US', 'Language', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);
--- Extra Menu
INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('21f9b5df-6e41-424f-98cf-e74850a19941', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'en-US', 'Profile', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('3afc1a5c-b1f5-41e2-b54e-88c8565e0d99', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'en-US', 'Security', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('fb261b75-91ac-4d7a-ad79-bcc0cd35b33d', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'en-US', 'Settings', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);

INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('8edd8eaa-c665-4d81-ab41-49a61df686ba', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', 'id-ID', 'Beranda', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('e0498589-37f3-4bd2-8116-9f2713abe051', '77687148-0cda-4a4a-96f1-900cd986c326', 'id-ID', 'Statistik', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('a817dc35-1d8d-4d60-b52a-d823bd5f6b5b', '079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', 'id-ID', 'Area', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('77bf369b-fcf1-4eff-9241-d82e0dfc96a7', 'b2a03772-10d7-4ec5-bb68-99f2d6080cea', 'id-ID', 'Jenis Kelamin', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('fbd3e5f3-de06-46d8-80ae-5f2fb5a3cc8b', '98a1bd05-2c42-47c4-afb7-9540f04e16b4', 'id-ID', 'Periode', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('c42b1488-d829-4775-a700-1bd87657eae1', 'b03f9702-44a4-44b1-86f2-7f03d070b35b', 'id-ID', 'Usia', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f143dd3b-ec59-401f-9796-c7c9d253db04', '5f4872f1-627e-4789-adf7-dc6db3884267', 'id-ID', 'Laporan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f64f819e-8ccd-4c13-bae5-4ec2bd641922', '645d5b77-1c4e-402d-b095-185412def6f5', 'id-ID', 'Area', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('1a2a530e-5fa7-4d16-8c30-4fccdada8dbe', '6fd757ea-b0cf-4d12-a25a-f446aae78057', 'id-ID', 'Jenis Kelamin', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('648bf4b9-400c-4e0a-acf3-f4103f30e46d', '542a2e77-6722-4d09-b5e3-ddf692431213', 'id-ID', 'Periode', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('e1366802-e57a-4a9c-9813-dddb133b072d', '0019a3e6-86ed-46d4-b6b2-e9525385c65f', 'id-ID', 'Usia', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('f6ea0727-8911-4e34-b1f7-26d50570f959', 'e76e6cfa-5ef2-4bc4-b5d4-dac5353d071c', 'id-ID', 'Laporan Fiktif', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('e4d513bf-bebf-4167-bd46-062277f1b7ae', 'f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8', 'id-ID', 'Manajemen Pengguna', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('b104f88a-d41f-4941-8d67-3b1aa3ce6b17', '3cf5bced-7def-426a-99f7-c8d44e1ce74c', 'id-ID', 'Konfigurasi Sistem', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('4b6bf4dd-e8e5-48a3-8573-235659497c9f', '8c66c75e-5931-40af-af28-7c60b366ffd4', 'id-ID', 'Parameter', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('3dbb0fcb-0228-4f12-b3ad-27c3b5de5c0f', 'b81076bf-dda0-4278-b639-ba6f750eb8c9', 'id-ID', 'Bahasa', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);
--- Extra Menu
INSERT INTO security.sec_menu_i18n (menu_i18n_uuid, menu_uuid, locale_code, title, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('1d78db6e-7352-4957-a13f-0f94e354a884', '59e7e128-fe95-48d4-97a9-5441ae3d320c', 'id-ID', 'Profil', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('6b0691fd-b496-4629-9987-c3c3afca53ec', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', 'id-ID', 'Keamanan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('838cca1c-9873-4882-bebd-57e1d4dccaf2', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', 'id-ID', 'Pengaturan', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL);

--
-- Dumping data for table sec_function
--

INSERT INTO security.sec_function(function_uuid, menu_uuid, role_uuid, access, version, is_active, created_date, created_by, modified_date, modified_by) VALUES
('f313c770-ae05-4664-b514-a471ed2ec577', 'b9029fd3-44cd-479c-965d-a8da1bfb20eb', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('22c3a77b-8f2d-4f04-a925-825a1e223a9e', '77687148-0cda-4a4a-96f1-900cd986c326', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('eee6d9d0-cc19-46e6-80ba-b9cb2360a76a', '079f7d96-8ef9-40d5-ab1a-0f6641e3e8cf', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('e731dcdf-89ba-465a-bfb4-f06a163f10ad', 'b2a03772-10d7-4ec5-bb68-99f2d6080cea', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('9f04d65e-8b90-484c-9e94-92f2256ffef1', '98a1bd05-2c42-47c4-afb7-9540f04e16b4', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('9eb462f0-b2fd-4adf-96cb-42b2df4c2c27', 'b03f9702-44a4-44b1-86f2-7f03d070b35b', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('a723114c-ce92-41ac-bcbd-4b640c4dbc19', '5f4872f1-627e-4789-adf7-dc6db3884267', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('39b59307-431e-41be-b98f-3bcfc8a408f0', '645d5b77-1c4e-402d-b095-185412def6f5', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('c6ebc35e-3a93-486e-9ff2-fc6ff53d4a5b', '6fd757ea-b0cf-4d12-a25a-f446aae78057', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('2405b5d5-9b89-45ac-ab68-cbfec8900ea0', '542a2e77-6722-4d09-b5e3-ddf692431213', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('8dc7d67a-1d0c-4e6d-8ee0-ba2f41cc5e16', '0019a3e6-86ed-46d4-b6b2-e9525385c65f', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('b137af7c-5720-4ed2-9305-32590dfdd82b', 'e76e6cfa-5ef2-4bc4-b5d4-dac5353d071c', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('d26385a1-5378-40a9-b0aa-d67eccd8557b', 'f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('d2e330b1-b87c-4891-ad95-ca01d95c9b16', '3cf5bced-7def-426a-99f7-c8d44e1ce74c', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('4803570a-360b-42b4-98da-f282acbbc1f2', '8c66c75e-5931-40af-af28-7c60b366ffd4', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('4254ad2f-7e80-4614-9ae7-7292397aaea1', 'b81076bf-dda0-4278-b639-ba6f750eb8c9', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null);
--- Extra Menu
INSERT INTO security.sec_function(function_uuid, menu_uuid, role_uuid, access, version, is_active, created_date, created_by, modified_date, modified_by) VALUES
('e20c9233-d18b-46ee-b63f-238cf2d17af9', '59e7e128-fe95-48d4-97a9-5441ae3d320c', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('e0a73e98-5f03-4ec2-a61d-0d4314732ab7', '65691d1c-8f9d-4f4f-9223-c48f8c4dcee4', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null),
('f05cb004-d570-4c95-a186-be95f6ae656d', '1de67261-d2f9-4a01-bba2-68db9b3ad8c3', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:06:50.069434', 'admin', null, null);

--
-- Dumping data for table sec_r_user_corporate
--

INSERT INTO security.sec_r_user_corporate (user_uuid, corporate_uuid) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca');

--
-- Dumping data for table sec_r_user_role
--

INSERT INTO security.sec_r_user_role (user_uuid, role_uuid) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '06be80df-5c41-42a7-9050-b328312d2f3a'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8');

--
-- Dumping data for table sec_settings
--
	
INSERT INTO security.sec_settings (settings_uuid, user_uuid) VALUES 
('d2802cb0-cd2b-44bc-8a2c-431d1e0be597', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab'),
('5fa21a4f-6231-4d25-9cdf-d7b1e25ff119', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6');

--
-- Dumping data for table sec_profile
--
	
INSERT INTO security.sec_profile (profile_uuid, user_uuid, fullname) VALUES 
('1af2403b-a4f8-4492-94c1-5d6ab8b4a094', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'Administrator'),
('d4fd659f-7bd6-4b1c-9127-e2dcf04651b0', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'User 01');