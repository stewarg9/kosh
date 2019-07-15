

insert into kosh.datastore_inventory (datastore_id, source_name) values (nextval('kosh.datastore_inventory_datastore_id_seq'), 'Test H2 Database');

insert into kosh.connection_profile(connection_profile_id, connection_template, crt_by, crt_ts) values (1, 'h2', 'postgres', current_timestamp);

insert into kosh.datastore_domain (datastore_id, domain_area, crt_by, crt_ts) values (currval('kosh.datastore_inventory_datastore_id_seq'), 'test', 'postgres', current_timestamp);

insert into kosh.datastore_contact (datastore_id) values (currval('kosh.datastore_inventory_datastore_id_seq'));

insert into kosh.datastore_component (datastore_id, component_id, connection_profile_id, component_type, is_sensitive, is_active, refresh_freq, crawl_freq, crt_by, crt_ts) values 
(currval('kosh.datastore_inventory_datastore_id_seq'), 1, 1, 'relational', false, true, '0 0 12 * * ?','0 0 12 * * ?', 'postgres', current_timestamp);

insert into kosh.relational_component (datastore_id, component_id, instance_name, schema_name, hostname, crt_by, crt_ts) values 
(currval('kosh.datastore_inventory_datastore_id_seq'), 1, 'test', 'test', 'localhost', 'postgres', current_timestamp );

commit;
