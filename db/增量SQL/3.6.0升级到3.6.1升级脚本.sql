-- 新增风格一对多内嵌和Tab风格
INSERT INTO sys_permission (id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
 VALUES ('1691031996d5931315212', '1455100420297859074', 'AUTO在线一对多内嵌', '/online/cgformInnerTableList/:id', 'super/online/cgform/auto/innerTable/OnlCgformInnerTableList', 1, '', NULL, 1, NULL, '0', 1.00, 0, NULL, 1, 0, 1, 0, NULL, 'admin', '2023-08-14 18:20:20', 'admin', '2023-08-14 18:46:18', 0, 0, NULL, 0);
INSERT INTO sys_permission (id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
 VALUES ('1691031996d5931315213', '1455100420297859074', 'AUTO在线Tab风格', '/online/cgformTabList/:id', 'super/online/cgform/auto/tab/OnlCgformTabList', 1, '', NULL, 1, NULL, '0', 1.00, 0, NULL, 1, 0, 1, 0, NULL, 'admin', '2023-08-14 18:20:20', 'admin', '2023-08-14 18:46:18', 0, 0, NULL, 0);

-- 【安全】online敏感接口，加权限注解（sql解析接口、同步数据库接口、导入表接口）
INSERT INTO sys_permission (id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699374704168534017', '1460888189937176577', 'SQL解析', NULL, NULL, 0, NULL, NULL, 2, 'online:report:parseSql', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-09-06 18:51:17', NULL, NULL, 0, 0, '1', 0);
INSERT INTO sys_permission (id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699374509749960705', '1455101470794850305', '查询数据库表名', NULL, NULL, 0, NULL, NULL, 2, 'online:form:queryTables', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-09-06 18:50:31', NULL, NULL, 0, 0, '1', 0);
INSERT INTO sys_permission (id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external) VALUES ('1699374269152100354', '1455101470794850305', '同步数据库', NULL, NULL, 0, NULL, NULL, 2, 'online:form:syncDb', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-09-06 18:49:33', NULL, NULL, 0, 0, '1', 0);
update sys_permission set is_leaf=0 where id in ('1460888189937176577','1455101470794850305');