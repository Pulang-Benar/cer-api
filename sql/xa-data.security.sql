--
-- Dumping data for table sec_role
--

INSERT INTO security.sec_role (role_uuid, role_name, description, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('06be80df-5c41-42a7-9050-b328312d2f3a', 'ROLE_ADMIN', 'Role Administrator', 0, true, '2018-12-02 20:52:28', NULL, NULL, NULL),
('9295fefc-7dfe-44ed-a4e3-52165cf44373', 'ROLE_ADMIN_REGIONAL', 'Role Admin Regional', 0, true, '2018-12-02 20:52:28', NULL, NULL, NULL),
('d68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8', 'ROLE_END', 'Role End User', 0, true, '2018-12-03 11:57:36', NULL, NULL, NULL);

--
-- Dumping data for table sec_user
--

INSERT INTO security.sec_user (user_uuid, username, password, account_enabled, account_non_expired, account_non_locked, credentials_non_expired, email, verification_code, raw, authority_default, "version", is_active, created_date, created_by, modified_date, modified_by) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'metro', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'metro.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('a695c3ec-71de-41d2-9623-fc96e55a6e35', 'aceh', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'aceh.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('d59c50c6-4c88-40ab-ab32-127b8dcca3da', 'sumut', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'aceh.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('504d4dd4-e718-4e1a-b509-1fd3b270b698', 'sumbar', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sumbar.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('ced677ee-7d07-4bff-bc0b-8ec334177812', 'riau', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'riau.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('63fb8263-e672-41e7-ad42-ca3d1d61463c', 'kepri', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kepri.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('dcb49994-1f47-4650-b869-8b318f93dde4', 'jambi', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'jambi.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('8076994f-f22b-4d9f-b093-a8ca7e1a5d11', 'bengkulu', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'bengkulu.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('65b02457-088c-43fe-b219-4fb9cfeca97a', 'sumsel', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sumsel.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('b9b4e0f0-0857-41b8-adb1-2a3fd235d13c', 'babel', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'babel.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('fe1ebd88-8702-416d-ad91-6bebf12302d8', 'lampung', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'lampung.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('541ec496-62fe-4b01-93fb-363da7f3f6fc', 'banten', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'banten.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('becbf470-6949-4820-a338-f0d9983e2f48', 'jabar', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'jabar.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('a881f8d4-0afb-4b11-953c-fab0141182e3', 'jateng', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'jateng.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('36b8f700-e4cf-45d2-aaf8-f1e3e7dbe836', 'jogja', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'jogja.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('6aca21b4-0f35-40c7-9882-f472d78c8185', 'jatim', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'jatim.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('22cf3dab-a318-45d5-92dc-0ed73f4331bd', 'kalbar', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kalbar.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('44c745e1-9de2-44f9-bb80-101a114ecf0a', 'kalteng', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kalteng.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('6bee06f2-ef33-450f-b1bc-dd93a49559ca', 'kalsel', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kalsel.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('502bc59b-c2cd-4920-bfdf-6931354f02d0', 'kaltim', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kaltim.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('f80ef54f-5f9d-47a7-b356-834b451ba45e', 'kaltara', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'kaltara.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('8972da69-186c-47ec-b5c1-75fc13c6d10b', 'sulut', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sulut.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('9ddb452e-1dab-438b-855e-f735fc0c66a2', 'gorontalo', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'gorontalo.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('cbfac2f3-7fdb-4e95-85b5-522188c46940', 'sulteng', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sulteng.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('b424674e-f336-4bf5-8aa2-6dfbd2ad06a9', 'sulbar', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sulbar.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('72be5b40-12b2-42e9-81e7-3ce4a6a6dc62', 'sulsel', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sulsel.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('2cf708c7-3096-411b-869d-35b3db2d055e', 'sultra', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'sultra.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('d2ae598e-5ae7-4d76-82c2-6a7634062d37', 'bali', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'bali.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('18585be5-e7ec-4933-87b3-92384bf33f5f', 'ntb', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'ntb.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('0ec057fe-0640-440e-ac35-0ad9cb4acd13', 'ntt', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'ntt.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('7a7a006b-c40d-4917-af3a-cfa697a0b356', 'malut', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'malut.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('47882cf5-d6c5-4899-a746-3ca81f848e95', 'maluku', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'maluku.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('40c1b405-a157-405b-bc9b-f6c9a3218902', 'pabar', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'pabar.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('f93ecaa1-2dd4-4f34-abd1-37f2d3c395d2', 'papua', '$2a$13$iJoBglX2Rx/AkTc30eCDx.rHUfVyI3nkd3rCpyiCHXdnmqZmKm1Hm', true, true, true, true, 'papua.cer@mailinator.com', NULL, NULL, 'ROLE_ADMIN_REGIONAL', 0, true, '2018-12-02 20:50:29', NULL, NULL, NULL),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'user', '$2a$13$SFGnAPHD/fP9BlNQU7drpeAKxFFgk9pDBIR5D4mb17RbNzKcU6K8S', true, true, true, true, 'user.cer@mailinator.com', NULL, NULL, 'ROLE_END', 0, true, '2018-12-05 14:50:55', NULL, NULL, NULL);

--
-- Dumping data for table oauth_client_details
-- xa-core = secretxa01
-- xa-mobile = secretxa02
--

INSERT INTO security.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES
('xa-core', 'profile,security,master,notification,general,file,report', '$2a$13$NrN1v1S4p0UsM8zDdvcUUeHqeUwmGbrobBaUwCO.eiIDVsIbIX5gy', 'read,write,trust,check_token', 'password,refresh_token', '', 'ROLE_ADMIN,ROLE_END', 7200, 3600, NULL, '1'),
('xa-mobile', 'profile,security,master', '$2a$13$jqHw2BuGwJsZXf.eF3XVlOgGxkquOGx4vRDL6ll8UUyr0wEj03YLO', 'read,write,check_token', 'password,refresh_token', '', 'ROLE_END', 7200, 3600, NULL, '1');

--
-- Dumping data for table sec_corporate
--

INSERT INTO security.sec_corporate(corporate_uuid, corporate_id, corporate_name, corporate_non_expired, email, address, telp_number) VALUES
('0ae4b095-d957-4ff1-a34d-7a440cc8d8ca', 'CER', 'Civilians Emergency Report', true, 'admin.cer@mailinator.com', 'Jakarta', '+21 2221 9967');

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
('f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8', NULL, '#', 0, 4, '004', 'people-outline', false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, NULL),
('4dc5f8f6-29e6-4cb1-a137-d4cdd3e2f634', '#MANAGEMENT-CIVILIANS-PAGE', '/app/mgmt/civilians', 1, 0, '004.000', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, 'f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8'),
('ab0c7ad2-5f53-4d42-9f49-e18a5d378c0f', '#MANAGEMENT-ADMIN-REGIONAL-PAGE', '/app/mgmt/admin-regional', 1, 1, '004.001', NULL, false, false, false, 0, true, '2018-12-04 13:35:36', NULL, NULL, NULL, 'f6c6570b-0a29-4f3a-baa5-6d273c0bc2a8'),
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
('c229f514-2e2b-46c1-9daf-978b34ff732c', '4dc5f8f6-29e6-4cb1-a137-d4cdd3e2f634', 'en-US', 'Civilians', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('60b2a62c-3aff-44e2-8bbd-aa13d64003f5', 'ab0c7ad2-5f53-4d42-9f49-e18a5d378c0f', 'en-US', 'Admin Regional', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
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
('d17d8cc6-78d0-4034-b1ec-48a9c9e1d1ae', '4dc5f8f6-29e6-4cb1-a137-d4cdd3e2f634', 'id-ID', 'Warga Sipil', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
('afd5dc05-19a7-418b-959d-2ef84c01237d', 'ab0c7ad2-5f53-4d42-9f49-e18a5d378c0f', 'id-ID', 'Admin Regional', 0, true, '2018-12-04 13:37:15', NULL, NULL, NULL),
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
('18cef61e-6af9-4913-8216-424c0595aae7', '4dc5f8f6-29e6-4cb1-a137-d4cdd3e2f634', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
('554fb325-19d3-4e95-ad32-530b2d8a5f83', 'ab0c7ad2-5f53-4d42-9f49-e18a5d378c0f', '06be80df-5c41-42a7-9050-b328312d2f3a', 'read,write,trust', 0, true, '2018-12-19 10:09:14.249008', 'admin', null, null),
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
('a695c3ec-71de-41d2-9623-fc96e55a6e35', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('d59c50c6-4c88-40ab-ab32-127b8dcca3da', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('504d4dd4-e718-4e1a-b509-1fd3b270b698', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('ced677ee-7d07-4bff-bc0b-8ec334177812', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('63fb8263-e672-41e7-ad42-ca3d1d61463c', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('dcb49994-1f47-4650-b869-8b318f93dde4', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('8076994f-f22b-4d9f-b093-a8ca7e1a5d11', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('65b02457-088c-43fe-b219-4fb9cfeca97a', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('b9b4e0f0-0857-41b8-adb1-2a3fd235d13c', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('fe1ebd88-8702-416d-ad91-6bebf12302d8', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('541ec496-62fe-4b01-93fb-363da7f3f6fc', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('becbf470-6949-4820-a338-f0d9983e2f48', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('a881f8d4-0afb-4b11-953c-fab0141182e3', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('36b8f700-e4cf-45d2-aaf8-f1e3e7dbe836', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('6aca21b4-0f35-40c7-9882-f472d78c8185', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('22cf3dab-a318-45d5-92dc-0ed73f4331bd', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('44c745e1-9de2-44f9-bb80-101a114ecf0a', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('6bee06f2-ef33-450f-b1bc-dd93a49559ca', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('502bc59b-c2cd-4920-bfdf-6931354f02d0', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('f80ef54f-5f9d-47a7-b356-834b451ba45e', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('8972da69-186c-47ec-b5c1-75fc13c6d10b', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('9ddb452e-1dab-438b-855e-f735fc0c66a2', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('cbfac2f3-7fdb-4e95-85b5-522188c46940', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('b424674e-f336-4bf5-8aa2-6dfbd2ad06a9', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('72be5b40-12b2-42e9-81e7-3ce4a6a6dc62', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('2cf708c7-3096-411b-869d-35b3db2d055e', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('d2ae598e-5ae7-4d76-82c2-6a7634062d37', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('18585be5-e7ec-4933-87b3-92384bf33f5f', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('0ec057fe-0640-440e-ac35-0ad9cb4acd13', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('7a7a006b-c40d-4917-af3a-cfa697a0b356', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('47882cf5-d6c5-4899-a746-3ca81f848e95', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('40c1b405-a157-405b-bc9b-f6c9a3218902', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('f93ecaa1-2dd4-4f34-abd1-37f2d3c395d2', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', '0ae4b095-d957-4ff1-a34d-7a440cc8d8ca');

--
-- Dumping data for table sec_r_user_role
--

INSERT INTO security.sec_r_user_role (user_uuid, role_uuid) VALUES
('1ac29215-75e8-4e19-b4f1-e076da7ca1ab', '06be80df-5c41-42a7-9050-b328312d2f3a'),
('a695c3ec-71de-41d2-9623-fc96e55a6e35', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('d59c50c6-4c88-40ab-ab32-127b8dcca3da', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('504d4dd4-e718-4e1a-b509-1fd3b270b698', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('ced677ee-7d07-4bff-bc0b-8ec334177812', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('63fb8263-e672-41e7-ad42-ca3d1d61463c', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('dcb49994-1f47-4650-b869-8b318f93dde4', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('8076994f-f22b-4d9f-b093-a8ca7e1a5d11', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('65b02457-088c-43fe-b219-4fb9cfeca97a', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('b9b4e0f0-0857-41b8-adb1-2a3fd235d13c', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('fe1ebd88-8702-416d-ad91-6bebf12302d8', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('541ec496-62fe-4b01-93fb-363da7f3f6fc', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('becbf470-6949-4820-a338-f0d9983e2f48', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('a881f8d4-0afb-4b11-953c-fab0141182e3', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('36b8f700-e4cf-45d2-aaf8-f1e3e7dbe836', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('6aca21b4-0f35-40c7-9882-f472d78c8185', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('22cf3dab-a318-45d5-92dc-0ed73f4331bd', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('44c745e1-9de2-44f9-bb80-101a114ecf0a', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('6bee06f2-ef33-450f-b1bc-dd93a49559ca', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('502bc59b-c2cd-4920-bfdf-6931354f02d0', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('f80ef54f-5f9d-47a7-b356-834b451ba45e', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('8972da69-186c-47ec-b5c1-75fc13c6d10b', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('9ddb452e-1dab-438b-855e-f735fc0c66a2', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('cbfac2f3-7fdb-4e95-85b5-522188c46940', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('b424674e-f336-4bf5-8aa2-6dfbd2ad06a9', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('72be5b40-12b2-42e9-81e7-3ce4a6a6dc62', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('2cf708c7-3096-411b-869d-35b3db2d055e', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('d2ae598e-5ae7-4d76-82c2-6a7634062d37', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('18585be5-e7ec-4933-87b3-92384bf33f5f', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('0ec057fe-0640-440e-ac35-0ad9cb4acd13', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('7a7a006b-c40d-4917-af3a-cfa697a0b356', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('47882cf5-d6c5-4899-a746-3ca81f848e95', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('40c1b405-a157-405b-bc9b-f6c9a3218902', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('f93ecaa1-2dd4-4f34-abd1-37f2d3c395d2', '9295fefc-7dfe-44ed-a4e3-52165cf44373'),
('38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'd68a2ea7-f1cb-484c-a3d4-b669ef3ff3c8');

--
-- Dumping data for table sec_settings
--
	
INSERT INTO security.sec_settings (settings_uuid, user_uuid) VALUES 
('d2802cb0-cd2b-44bc-8a2c-431d1e0be597', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab'),
('34f62920-469e-497b-9e63-9ef332fafacc', 'a695c3ec-71de-41d2-9623-fc96e55a6e35'),
('c78363bb-1e54-48c8-af9f-55e70f5fc739', 'd59c50c6-4c88-40ab-ab32-127b8dcca3da'),
('90fd7ff5-c05a-4416-935c-cb41bb7c9d2a', '504d4dd4-e718-4e1a-b509-1fd3b270b698'),
('f0b7f6b0-73c2-49aa-bff1-06b1de7804d6', 'ced677ee-7d07-4bff-bc0b-8ec334177812'),
('40016679-05ef-4e98-a144-61ce5c24b6c2', '63fb8263-e672-41e7-ad42-ca3d1d61463c'),
('4d5c9d8b-a7b8-41a8-b541-d89043d1caab', 'dcb49994-1f47-4650-b869-8b318f93dde4'),
('dff279f7-0f20-4892-9678-2f1f0c6ff154', '8076994f-f22b-4d9f-b093-a8ca7e1a5d11'),
('5c744da3-d4af-439d-abed-9ca1d4aadc28', '65b02457-088c-43fe-b219-4fb9cfeca97a'),
('ef756def-5179-4e7c-9d5b-7add268483c7', 'b9b4e0f0-0857-41b8-adb1-2a3fd235d13c'),
('1da2dff2-8f22-42ee-9c61-8c84829694c5', 'fe1ebd88-8702-416d-ad91-6bebf12302d8'),
('539dc0fa-35e4-435e-9005-7f57d471927d', '541ec496-62fe-4b01-93fb-363da7f3f6fc'),
('99c7df8f-cddd-4dfa-a32f-b2e570c4d472', 'becbf470-6949-4820-a338-f0d9983e2f48'),
('ef1ba58b-5622-4ea7-8bdc-c60f941cf0bf', 'a881f8d4-0afb-4b11-953c-fab0141182e3'),
('90a64b1a-43ef-40cb-82a3-fd951eba864b', '36b8f700-e4cf-45d2-aaf8-f1e3e7dbe836'),
('826c08cc-ea48-4450-824b-925c69b9a75b', '6aca21b4-0f35-40c7-9882-f472d78c8185'),
('3ec8640a-b686-4f88-9ce0-3152e720c537', '22cf3dab-a318-45d5-92dc-0ed73f4331bd'),
('04e22595-3048-4cef-9f40-9212b588095e', '44c745e1-9de2-44f9-bb80-101a114ecf0a'),
('7f00c3d0-1d08-42a9-b051-9b2335f9c24f', '6bee06f2-ef33-450f-b1bc-dd93a49559ca'),
('14ae2eeb-eaee-4270-83c2-6f8f7dea9d10', '502bc59b-c2cd-4920-bfdf-6931354f02d0'),
('106dae81-e1fc-4ae9-a682-47bfb7111c53', 'f80ef54f-5f9d-47a7-b356-834b451ba45e'),
('a4dd457c-786e-4b40-b22d-4ed0bb9b45fb', '8972da69-186c-47ec-b5c1-75fc13c6d10b'),
('a1a18678-d859-49e6-a107-10e8830c41d3', '9ddb452e-1dab-438b-855e-f735fc0c66a2'),
('66605d59-1a2f-4d1d-9441-7d0b67d746d5', 'cbfac2f3-7fdb-4e95-85b5-522188c46940'),
('ffd4300f-9bd6-4e0d-b6e8-268242fb5692', 'b424674e-f336-4bf5-8aa2-6dfbd2ad06a9'),
('5ea86bc3-cbcf-4fd8-a339-9e123319bd2f', '72be5b40-12b2-42e9-81e7-3ce4a6a6dc62'),
('0a59b1dc-15c3-4eb0-8ac3-7a385fee5fe4', '2cf708c7-3096-411b-869d-35b3db2d055e'),
('498b0d1e-e603-4e65-8ef8-63697ad69aaa', 'd2ae598e-5ae7-4d76-82c2-6a7634062d37'),
('1cb92e66-6fd4-49f9-af91-51882a2e2a4d', '18585be5-e7ec-4933-87b3-92384bf33f5f'),
('d986a562-230b-497d-86b9-ec8c16c41584', '0ec057fe-0640-440e-ac35-0ad9cb4acd13'),
('c96eb7f2-87e2-4d1b-b00a-b38b5bf6c373', '7a7a006b-c40d-4917-af3a-cfa697a0b356'),
('3d2693e0-76cb-4403-86f6-504ccc1ab344', '47882cf5-d6c5-4899-a746-3ca81f848e95'),
('0acac38b-816e-445a-9e98-5f1a7f6ae45c', '40c1b405-a157-405b-bc9b-f6c9a3218902'),
('0df0ab59-cdf4-4765-b1a3-4dc9c2113a04', 'f93ecaa1-2dd4-4f34-abd1-37f2d3c395d2'),
('5fa21a4f-6231-4d25-9cdf-d7b1e25ff119', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6');

--
-- Dumping data for table sec_profile
--
	
INSERT INTO security.sec_profile (profile_uuid, user_uuid, fullname) VALUES 
('1af2403b-a4f8-4492-94c1-5d6ab8b4a094', '1ac29215-75e8-4e19-b4f1-e076da7ca1ab', 'Polda Metro Jaya'),
('d9c14d4e-890b-49c2-aa15-d70ab87e0c42', '34f62920-469e-497b-9e63-9ef332fafacc', 'Polda Aceh'),
('bfad9391-0b0d-40c0-b823-321c9e5bd545', 'c78363bb-1e54-48c8-af9f-55e70f5fc739', 'Polda Sumut'),
('85a3ad95-82df-41e0-880c-b5a74d6879e0', '90fd7ff5-c05a-4416-935c-cb41bb7c9d2a', 'Polda Sumbar'),
('3ba19d4f-fc1e-41b0-9402-5ac3eb0cf02c', 'f0b7f6b0-73c2-49aa-bff1-06b1de7804d6', 'Polda Riau'),
('813d39c2-3d53-449a-8ce3-44d55d5655b7', '40016679-05ef-4e98-a144-61ce5c24b6c2', 'Polda Kepri'),
('aedb367d-41c4-414f-aa92-9272de127662', '4d5c9d8b-a7b8-41a8-b541-d89043d1caab', 'Polda Jambi'),
('46d26e4c-2694-4a96-87f6-007d33cc3dda', 'dff279f7-0f20-4892-9678-2f1f0c6ff154', 'Polda Bengkulu'),
('b431fb03-bf5c-49dd-b0fa-23d9a7adadbb', '5c744da3-d4af-439d-abed-9ca1d4aadc28', 'Polda Sumsel'),
('215410ba-763a-4ba4-8b4f-1cd9ce8321d1', 'ef756def-5179-4e7c-9d5b-7add268483c7', 'Polda Babel'),
('a7063322-0898-4476-a3ab-641ba5291b79', '1da2dff2-8f22-42ee-9c61-8c84829694c5', 'Polda Lampung'),
('86a62574-88ff-43d6-8e73-ea1c8551bf97', '539dc0fa-35e4-435e-9005-7f57d471927d', 'Polda Banten'),
('f4a8d89f-0c81-40ed-8119-bdafbbd8b8a2', '99c7df8f-cddd-4dfa-a32f-b2e570c4d472', 'Polda Jabar'),
('1e01c884-6cf7-4a78-99a4-0f909df7e1e8', 'ef1ba58b-5622-4ea7-8bdc-c60f941cf0bf', 'Polda Jateng'),
('19ebb397-248a-419c-a869-994a728b41ff', '90a64b1a-43ef-40cb-82a3-fd951eba864b', 'Polda DIY'),
('9256a44a-adbc-45dd-84fb-5519353c4519', '826c08cc-ea48-4450-824b-925c69b9a75b', 'Polda Jatim'),
('903ccd78-44de-4eab-bb4d-6f59366d9219', '3ec8640a-b686-4f88-9ce0-3152e720c537', 'Polda Kalbar'),
('654fcbe9-8349-4354-a0aa-aaafb582bcc2', '04e22595-3048-4cef-9f40-9212b588095e', 'Polda Kalteng'),
('5ba04456-688d-4c57-9833-4bb69791a1ad', '7f00c3d0-1d08-42a9-b051-9b2335f9c24f', 'Polda Kalsel'),
('3ebb1012-eca2-4417-b1f2-7df301a930b1', '14ae2eeb-eaee-4270-83c2-6f8f7dea9d10', 'Polda Kaltim'),
('e9f6ea0a-afdf-4ef8-bf77-b2b88bc79b08', '106dae81-e1fc-4ae9-a682-47bfb7111c53', 'Polda Kaltara'),
('e34bd0c3-3291-4c5e-abd9-1712788f9911', 'a4dd457c-786e-4b40-b22d-4ed0bb9b45fb', 'Polda Sulut'),
('5816ca49-682e-41f2-8502-ef0237bb6410', 'a1a18678-d859-49e6-a107-10e8830c41d3', 'Polda Gorontalo'),
('b8908d8f-cedf-426c-960b-f9111fdcaed1', '66605d59-1a2f-4d1d-9441-7d0b67d746d5', 'Polda Sulteng'),
('0ed39e70-9d22-4848-9916-92ccdc76a6e8', 'ffd4300f-9bd6-4e0d-b6e8-268242fb5692', 'Polda Sulbar'),
('94559706-2634-4674-a19b-cbb4858f08ca', '5ea86bc3-cbcf-4fd8-a339-9e123319bd2f', 'Polda Sulsel'),
('5ca6737e-1e09-43f8-85c3-2399d488a82b', '0a59b1dc-15c3-4eb0-8ac3-7a385fee5fe4', 'Polda Sultra'),
('fa35f658-1e20-4509-ad3f-a8b532ea99c2', '498b0d1e-e603-4e65-8ef8-63697ad69aaa', 'Polda Bali'),
('f9cdb922-32bb-45f7-bb5a-5b853d4e1feb', '1cb92e66-6fd4-49f9-af91-51882a2e2a4d', 'Polda NTB'),
('5660a4b4-13a4-4d0c-9bdd-0afebd97f448', 'd986a562-230b-497d-86b9-ec8c16c41584', 'Polda NTT'),
('d667c6ba-9bef-40fd-9a8a-274bdf51a655', 'c96eb7f2-87e2-4d1b-b00a-b38b5bf6c373', 'Polda Malut'),
('ee97ec4a-fba2-4036-bb98-5aeb7e46192b', '3d2693e0-76cb-4403-86f6-504ccc1ab344', 'Polda Maluku'),
('46cb004a-9025-4685-b8fa-e082dd5d7a62', '0acac38b-816e-445a-9e98-5f1a7f6ae45c', 'Polda Pabar'),
('25cc4e94-7c55-479c-be57-421f6538fd42', '0df0ab59-cdf4-4765-b1a3-4dc9c2113a04', 'Polda Papua'),
('d4fd659f-7bd6-4b1c-9127-e2dcf04651b0', '38527ac6-edb6-4a4f-8e60-eede49c4c2a6', 'User 01');