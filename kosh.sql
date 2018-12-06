-- Kosh DataBase Model DDLs

-- Kosh is a metadata repository that contains both technical and operational (scheduling,status,etc) metadata used by the Bots to provide the execution and orchestration of ingestion and curation tasks.


 --  Copyright 2018 modakanalytics.com

 --  Licensed under the Apache License, Version 2.0 (the "License");
 --  you may not use this file except in compliance with the License.
 --  You may obtain a copy of the License at

 --  http://www.apache.org/licenses/LICENSE-2.0

  -- Unless required by applicable law or agreed to in writing, software
  -- distributed under the License is distributed on an "AS IS" BASIS,
  -- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  -- See the License for the specific language governing permissions and
  -- limitations under the License.



ALTER TABLE "kosh"."filewindow_load_stats" DROP CONSTRAINT IF EXISTS "Relationship64"
;
ALTER TABLE "kosh"."filelinux_load_stats" DROP CONSTRAINT IF EXISTS "Relationship63"
;
ALTER TABLE "kosh"."unstructured_load_stats" DROP CONSTRAINT IF EXISTS "Relationship62"
;
ALTER TABLE "kosh"."file_linux_entity" DROP CONSTRAINT IF EXISTS "Relationship59"
;
ALTER TABLE "kosh"."file_window_entity" DROP CONSTRAINT IF EXISTS "Relationship58"
;
ALTER TABLE "kosh"."file_scheduler" DROP CONSTRAINT IF EXISTS "Relationship54"
;
ALTER TABLE "kosh"."table_scheduler" DROP CONSTRAINT IF EXISTS "Relationship53"
;
ALTER TABLE "kosh"."job_run_stats" DROP CONSTRAINT IF EXISTS "Relationship47"
;
ALTER TABLE "kosh"."structured_jobtotable" DROP CONSTRAINT IF EXISTS "Relationship44"
;
ALTER TABLE "kosh"."table_load_result" DROP CONSTRAINT IF EXISTS "Relationship43"
;
ALTER TABLE "kosh"."table_load_result" DROP CONSTRAINT IF EXISTS "Relationship40"
;
ALTER TABLE "kosh"."job_run_stats" DROP CONSTRAINT IF EXISTS "Relationship39"
;
ALTER TABLE "kosh"."table_load_stats" DROP CONSTRAINT IF EXISTS "Relationship38"
;
ALTER TABLE "kosh"."data_processing_stats" DROP CONSTRAINT IF EXISTS "Relationship37"
;
ALTER TABLE "kosh"."bot_status" DROP CONSTRAINT IF EXISTS "Relationship36"
;
ALTER TABLE "kosh"."errormessages" DROP CONSTRAINT IF EXISTS "Relationship32"
;
ALTER TABLE "kosh"."unstructured_entity" DROP CONSTRAINT IF EXISTS "Relationship10"
;
ALTER TABLE "kosh"."unstructured_component" DROP CONSTRAINT IF EXISTS "Relationship9"
;
ALTER TABLE "kosh"."file_system_component" DROP CONSTRAINT IF EXISTS "datacomp to filesyscomp"
;
ALTER TABLE "kosh"."column_frequency" DROP CONSTRAINT IF EXISTS "colprof to colfreq"
;
ALTER TABLE "kosh"."column_profile" DROP CONSTRAINT IF EXISTS "tableentity to colprof"
;
ALTER TABLE "kosh"."table_privileges" DROP CONSTRAINT IF EXISTS "tableentity to tablepriv"
;
ALTER TABLE "kosh"."column_metadata" DROP CONSTRAINT IF EXISTS "tabletocolumnmeta"
;
ALTER TABLE "kosh"."index_column" DROP CONSTRAINT IF EXISTS "tableentity to indexcol"
;
ALTER TABLE "kosh"."table_entity" DROP CONSTRAINT IF EXISTS "relcomp to tableentity"
;
ALTER TABLE "kosh"."datastore_component" DROP CONSTRAINT IF EXISTS "conproftodatacomp"
;
ALTER TABLE "kosh"."relational_component" DROP CONSTRAINT IF EXISTS "Relationship4"
;
ALTER TABLE "kosh"."datastore_component" DROP CONSTRAINT IF EXISTS "source_2_component"
;
ALTER TABLE "kosh"."datastore_contact" DROP CONSTRAINT IF EXISTS "datainv to child entity"
;
ALTER TABLE "kosh"."datastore_domain" DROP CONSTRAINT IF EXISTS "domain_assignments"
;




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE "kosh"."unstructured_load_stats" DROP CONSTRAINT IF EXISTS "Key50"
;
ALTER TABLE "kosh"."filewindow_load_stats" DROP CONSTRAINT IF EXISTS "Key502"
;
ALTER TABLE "kosh"."file_window_entity" DROP CONSTRAINT IF EXISTS "Key171"
;
ALTER TABLE "kosh"."hive_datatype_mapping" DROP CONSTRAINT IF EXISTS "Key53"
;
ALTER TABLE "kosh"."filelinux_load_stats" DROP CONSTRAINT IF EXISTS "Key501"
;
ALTER TABLE "kosh"."job_load_result" DROP CONSTRAINT IF EXISTS "Key49"
;
ALTER TABLE "kosh"."file_scheduler" DROP CONSTRAINT IF EXISTS "Key47"
;
ALTER TABLE "kosh"."file_scheduler" DROP CONSTRAINT IF EXISTS "Key48"
;
ALTER TABLE "kosh"."table_scheduler" DROP CONSTRAINT IF EXISTS "Key46"
;
ALTER TABLE "kosh"."table_scheduler" DROP CONSTRAINT IF EXISTS "tablekey"
;
ALTER TABLE "kosh"."structured_jobtotable" DROP CONSTRAINT IF EXISTS "Key44"
;
ALTER TABLE "kosh"."table_load_stats" DROP CONSTRAINT IF EXISTS "Key41"
;
ALTER TABLE "kosh"."job_metadata" DROP CONSTRAINT IF EXISTS "Key40"
;
ALTER TABLE "kosh"."errors" DROP CONSTRAINT IF EXISTS "Key39"
;
ALTER TABLE "kosh"."errors" DROP CONSTRAINT IF EXISTS "error_id"
;
ALTER TABLE "kosh"."errormessages" DROP CONSTRAINT IF EXISTS "UUID"
;
ALTER TABLE "kosh"."data_processing_stats" DROP CONSTRAINT IF EXISTS "Key38"
;
ALTER TABLE "kosh"."bot_status" DROP CONSTRAINT IF EXISTS "Key37"
;
ALTER TABLE "kosh"."bot_status" DROP CONSTRAINT IF EXISTS "KeyUU"
;
ALTER TABLE "kosh"."bot_registry" DROP CONSTRAINT IF EXISTS "Key36"
;
ALTER TABLE "kosh"."bot_registry" DROP CONSTRAINT IF EXISTS "Keyuuid"
;
ALTER TABLE "kosh"."data_entity_lineage" DROP CONSTRAINT IF EXISTS "Key35"
;
ALTER TABLE "kosh"."data_entity_lineage" DROP CONSTRAINT IF EXISTS "lineage_id"
;
ALTER TABLE "kosh"."profile_xref" DROP CONSTRAINT IF EXISTS "Key29"
;
ALTER TABLE "kosh"."unstructured_entity" DROP CONSTRAINT IF EXISTS "Key21"
;
ALTER TABLE "kosh"."unstructured_component" DROP CONSTRAINT IF EXISTS "Key20"
;
ALTER TABLE "kosh"."web_endpoint_entity" DROP CONSTRAINT IF EXISTS "Key19"
;
ALTER TABLE "kosh"."web_endpoint_component" DROP CONSTRAINT IF EXISTS "Key18"
;
ALTER TABLE "kosh"."file_linux_entity" DROP CONSTRAINT IF EXISTS "Key172"
;
ALTER TABLE "kosh"."file_system_component" DROP CONSTRAINT IF EXISTS "Key16"
;
ALTER TABLE "kosh"."column_frequency" DROP CONSTRAINT IF EXISTS "Key14"
;
ALTER TABLE "kosh"."column_profile" DROP CONSTRAINT IF EXISTS "Key13"
;
ALTER TABLE "kosh"."table_privileges" DROP CONSTRAINT IF EXISTS "Key11"
;
ALTER TABLE "kosh"."column_metadata" DROP CONSTRAINT IF EXISTS "Key10"
;
ALTER TABLE "kosh"."index_column" DROP CONSTRAINT IF EXISTS "Key9"
;
ALTER TABLE "kosh"."crawl_xref" DROP CONSTRAINT IF EXISTS "Key8"
;
ALTER TABLE "kosh"."table_entity" DROP CONSTRAINT IF EXISTS "table_id_timestampkey"
;
ALTER TABLE "kosh"."table_entity" DROP CONSTRAINT IF EXISTS "Key7"
;
ALTER TABLE "kosh"."connection_profile" DROP CONSTRAINT IF EXISTS "Key6"
;
ALTER TABLE "kosh"."relational_component" DROP CONSTRAINT IF EXISTS "Key5"
;
ALTER TABLE "kosh"."datastore_component" DROP CONSTRAINT IF EXISTS "Key4"
;
ALTER TABLE "kosh"."datastore_contact" DROP CONSTRAINT IF EXISTS "datastore_id1"
;
ALTER TABLE "kosh"."datastore_domain" DROP CONSTRAINT IF EXISTS "datastore_id"
;
ALTER TABLE "kosh"."datastore_inventory" DROP CONSTRAINT IF EXISTS "source_id_pk"
;


-- Drop indexes section -------------------------------------------------

DROP INDEX IF EXISTS "kosh"."IX_Relationship58"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship54"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship52"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship44"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship40"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship43"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship39"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship47"
;
DROP INDEX IF EXISTS "kosh"."IX_JobId"
;
DROP INDEX IF EXISTS "kosh"."IX_ErrorMessages_Errorid"
;
DROP INDEX IF EXISTS "kosh"."IX_ErrorMessages_Name"
;
DROP INDEX IF EXISTS "kosh"."IX_errormsgs_to_errors"
;
DROP INDEX IF EXISTS "kosh"."IX_dataprocessingstats_etlname"
;
DROP INDEX IF EXISTS "kosh"."IX_botstatus_uuid"
;
DROP INDEX IF EXISTS "kosh"."IX_botregistry_name"
;
DROP INDEX IF EXISTS "kosh"."IX_botregistry_uuid"
;
DROP INDEX IF EXISTS "kosh"."IX_profilexref_profileid"
;
DROP INDEX IF EXISTS "kosh"."IX_Relationship59"
;
DROP INDEX IF EXISTS "kosh"."IX_Crawlxref_crawlid"
;
DROP INDEX IF EXISTS "kosh"."IX_source_2_contact"
;
DROP INDEX IF EXISTS "kosh"."IX_source_2_domain"
;


-- Drop tables section ---------------------------------------------------

DROP TABLE IF EXISTS "kosh"."unstructured_notclassified"
;
DROP TABLE IF EXISTS "kosh"."structured_notclassified"
;
DROP TABLE IF EXISTS "kosh"."unstructured_load_stats"
;
DROP TABLE IF EXISTS "kosh"."data_spider_verificaton"
;
DROP TABLE IF EXISTS "kosh"."database_properties"
;
DROP TABLE IF EXISTS "kosh"."filewindow_load_stats"
;
DROP TABLE IF EXISTS "kosh"."file_window_entity"
;
DROP TABLE IF EXISTS "kosh"."hive_datatype_mapping"
;
DROP TABLE IF EXISTS "kosh"."process_id_table_map"
;
DROP TABLE IF EXISTS "kosh"."connection_error"
;
DROP TABLE IF EXISTS "kosh"."filelinux_load_stats"
;
DROP TABLE IF EXISTS "kosh"."job_load_result"
;
DROP TABLE IF EXISTS "kosh"."file_scheduler"
;
DROP TABLE IF EXISTS "kosh"."table_scheduler"
;
DROP TABLE IF EXISTS "kosh"."structured_jobtotable"
;
DROP TABLE IF EXISTS "kosh"."table_load_result"
;
DROP TABLE IF EXISTS "kosh"."job_run_stats"
;
DROP TABLE IF EXISTS "kosh"."table_load_stats"
;
DROP TABLE IF EXISTS "kosh"."job_metadata"
;
DROP TABLE IF EXISTS "kosh"."errors"
;
DROP TABLE IF EXISTS "kosh"."errormessages"
;
DROP TABLE IF EXISTS "kosh"."data_processing_stats"
;
DROP TABLE IF EXISTS "kosh"."bot_status"
;
DROP TABLE IF EXISTS "kosh"."bot_registry"
;
DROP TABLE IF EXISTS "kosh"."data_entity_lineage"
;
DROP TABLE IF EXISTS "kosh"."profile_xref"
;
DROP TABLE IF EXISTS "kosh"."unstructured_entity"
;
DROP TABLE IF EXISTS "kosh"."unstructured_component"
;
DROP TABLE IF EXISTS "kosh"."file_linux_entity"
;
DROP TABLE IF EXISTS "kosh"."file_system_component"
;
DROP TABLE IF EXISTS "kosh"."column_frequency"
;
DROP TABLE IF EXISTS "kosh"."column_profile"
;
DROP TABLE IF EXISTS "kosh"."table_privileges"
;
DROP TABLE IF EXISTS "kosh"."column_metadata"
;
DROP TABLE IF EXISTS "kosh"."index_column"
;
DROP TABLE IF EXISTS "kosh"."crawl_xref"
;
DROP TABLE IF EXISTS "kosh"."table_entity"
;
DROP TABLE IF EXISTS "kosh"."connection_profile"
;
DROP TABLE IF EXISTS "kosh"."relational_component"
;
DROP TABLE IF EXISTS "kosh"."datastore_component"
;
DROP TABLE IF EXISTS "kosh"."datastore_contact"
;
DROP TABLE IF EXISTS "kosh"."datastore_domain"
;
DROP TABLE IF EXISTS "kosh"."datastore_inventory"
;

-- Drop schemas section --------------------------------------------------- 

DROP SCHEMA IF EXISTS "kosh"
;

-- Create schemas section -------------------------------------------------

CREATE SCHEMA "kosh"
;

-- Create sequences section -------------------------------------------------

CREATE SEQUENCE "kosh"."target_table_id"
 INCREMENT BY 2
 START WITH 2
 NO MAXVALUE
 NO MINVALUE
 CACHE 1
;

CREATE SEQUENCE "kosh"."source_table_id_seq"
 INCREMENT BY 2
 START WITH 1
 NO MAXVALUE
 NO MINVALUE
 CACHE 1
;

-- Create tables section -------------------------------------------------

-- Table kosh datastore_inventory

CREATE TABLE "kosh"."datastore_inventory"(
 "datastore_id" bigSerial NOT NULL,
 "inventory_id" Text,
 "source_name" Text NOT NULL,
 "description" Text,
 "documentation" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."datastore_id" IS 'The source_id allows a collection of related source components to be combined into a ''virtual source'''
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."inventory_id" IS 'The inventory_id allows a descriptive name to be associated with the source inventory record.'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."source_name" IS 'This should be a short name to be used when referring to the source.'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."description" IS 'Provides a summary description of the source contents'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."documentation" IS 'Provides link(s) to detailed documentation related to the source if available.'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."crt_by" IS 'person or process creating the record.'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."crt_ts" IS 'The timestamp for the record creation	'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."mod_by" IS 'Person or process who created the record.'
;
COMMENT ON COLUMN "kosh"."datastore_inventory"."mod_ts" IS 'Timestamp for when this record was modified.'
;

-- Add keys for table kosh datastore_inventory

ALTER TABLE "kosh"."datastore_inventory" ADD CONSTRAINT "source_id_pk" PRIMARY KEY ("datastore_id")
;

-- Table kosh datastore_domain

CREATE TABLE "kosh"."datastore_domain"(
 "datastore_id"  Bigint NOT NULL,
 "domain_area" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."datastore_domain"."datastore_id" IS 'see parent table'
;
COMMENT ON COLUMN "kosh"."datastore_domain"."domain_area" IS 'Specifies a domain such as assay, safety,gene, etc.'
;
COMMENT ON COLUMN "kosh"."datastore_domain"."crt_by" IS 'person or process creating the record.'
;
COMMENT ON COLUMN "kosh"."datastore_domain"."crt_ts" IS 'The timestamp for the record creation	'
;
COMMENT ON COLUMN "kosh"."datastore_domain"."mod_by" IS 'Person or process who created the record.'
;
COMMENT ON COLUMN "kosh"."datastore_domain"."mod_ts" IS 'Timestamp for when this record was modified.'
;

-- Create indexes for table kosh datastore_domain

CREATE INDEX "IX_source_2_domain" ON "kosh"."datastore_domain" ("datastore_id")
;

-- Add keys for table kosh datastore_domain

ALTER TABLE "kosh"."datastore_domain" ADD CONSTRAINT "datastore_id" PRIMARY KEY ("datastore_id")
;

-- Table kosh datastore_contact

Create  table kosh.datastore_contact (
    datastore_id                   INT8                          ,
    name                           TEXT                          ,
    role                           TEXT                          ,
    email                          TEXT                          ,
    crt_by                         TEXT                          ,
    crt_ts                         TIMESTAMP                     ,
    mod_by                         TEXT                          ,
    mod_ts                         TIMESTAMP                     ,
    curation_user_email            VARCHAR(255)                  ,
    curation_user_name             VARCHAR(255)                  ) ;

COMMENT ON COLUMN "kosh"."datastore_contact"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."name" IS 'The name of a person who has some responsibility over the source.'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."role" IS 'The role in relaton to the source - such as business owner - architect - etc.'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."email" IS 'Email of the point of contact of the source'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."crt_by" IS 'The person or process that created the record.'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."mod_by" IS 'The person or process that modified the record.'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."mod_ts" IS 'The time of record modification'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."curation_user_email" IS 'user email of curation user'
;
COMMENT ON COLUMN "kosh"."datastore_contact"."curation_user_name" IS 'user name of curation user'
;
-- Create indexes for table kosh datastore_contact

CREATE UNIQUE INDEX "IX_source_2_contact" ON "kosh"."datastore_contact" ("datastore_id")
;

-- Add keys for table kosh datastore_contact

ALTER TABLE "kosh"."datastore_contact" ADD CONSTRAINT "datastore_id1" PRIMARY KEY ("datastore_id")
;

-- Table kosh datastore_component

CREATE TABLE "kosh"."datastore_component"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "connection_profile_id" Smallint,
 "component_type" Text NOT NULL,
 "cluster_location" Text,
 "layer_location" Text,
 "description" Text,
 "is_sensitive" Boolean NOT NULL,
 "is_active" Boolean NOT NULL,
 "refresh_freq" Character(13) NOT NULL,
 "crawl_freq" Character(13) NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."datastore_component"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."datastore_component"."component_id" IS 'This is an arbitrary and unique identifier for a component of a source.  It could be a database schema, a file system, etc.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."connection_profile_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."datastore_component"."component_type" IS 'Indicates if this is a relatonal database component, file system component, etc.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."description" IS 'Additional descriptive information if desired.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."is_sensitive" IS 'Indicates whether or not the component contains sensitive information.  This might mean that when the data is move, it needs to be stored in an encrypted zone and have more stringent access controls.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."is_active" IS 'Components could be decommisioned by the owning organization.  '
;
COMMENT ON COLUMN "kosh"."datastore_component"."refresh_freq" IS 'a cron format string to indicate the default refresh frequency for this component of the source.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."crawl_freq" IS 'a cron format string to indicate the default crawl frequency for this component of the source.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."datastore_component"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."datastore_component"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."datastore_component"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Add keys for table kosh datastore_component

ALTER TABLE "kosh"."datastore_component" ADD CONSTRAINT "Key4" PRIMARY KEY ("datastore_id","component_id")
;

-- Table kosh relational_component

CREATE TABLE "kosh"."relational_component"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "hostname" Text NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."datastore_component"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."relational_component"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "kosh"."relational_component"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."relational_component"."schema_name" IS 'The schema for this relational component'
;
COMMENT ON COLUMN "kosh"."relational_component"."hostname" IS 'the fully specified name of the host where the database instance is located.  '
;
COMMENT ON COLUMN "kosh"."relational_component"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."relational_component"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."relational_component"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."relational_component"."mod_ts" IS 'Indicates the last time the record was modified.'

-- Add keys for table kosh relational_component

ALTER TABLE "kosh"."relational_component" ADD CONSTRAINT "Key5" PRIMARY KEY ("datastore_id","component_id","instance_name","schema_name")
;

-- Table kosh connection_profile

CREATE TABLE "kosh"."connection_profile"(
 "connection_profile_id" Smallint NOT NULL,
 "connection_template" Text NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."connection_profile" IS 'Each type of source component should have a specific pattern that allows crawlers and/or ingesters to connect to the source.  These connection patterns can be expressed in the form of a parameterized StringTemplate document that will be instantiated by the crawler using information in the tables that define the source.'
;
COMMENT ON COLUMN "kosh"."connection_profile"."connection_template" IS 'This is a StringTemplate type of document that will be used to instantiate the necessary configuration file to allow connection to the source.'
;
COMMENT ON COLUMN "kosh"."connection_profile"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."connection_profile"."crt_ts" IS 'The time at which the record was created
'
;
COMMENT ON COLUMN "kosh"."connection_profile"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."connection_profile"."mod_ts" IS 'Indicates the last time the record was modified.'

-- Add keys for table kosh connection_profile

ALTER TABLE "kosh"."connection_profile" ADD CONSTRAINT "Key6" PRIMARY KEY ("connection_profile_id")
;

-- Table kosh table_entity

CREATE TABLE "kosh"."table_entity"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "table_name" Text,
 "table_owner" Text,
 "status" Text,
 "estimated_rows" Bigint,
 "inserts" Bigint,
 "updates" Bigint,
 "deletes" Bigint,
 "create_table_ts" Timestamp,
 "modified_table_ts" Timestamp,
 "table_size" Real,
 "num_columns" Bigint,
 "table_layer" Text,
 "location_path" Text,
 "tablespace_name" Text,
 "table_format" Text,
 "is_encrypted" Boolean,
 "is_compressed" Boolean,
 "table_type" Text,
 "table_type_owner" Text,
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "crawl_id" Bigint NOT NULL,
 "prev_crawl_id" Bigint,
 "lineage_uuid" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."table_entity"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_entity"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "kosh"."table_entity"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."table_entity"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_id" IS 'A unique id given to a table '
;
COMMENT ON COLUMN "kosh"."table_entity"."table_name" IS 'name of the table '
;
COMMENT ON COLUMN "kosh"."table_entity"."table_owner" IS 'Who created the table in the source level'
;
COMMENT ON COLUMN "kosh"."table_entity"."status" IS 'specifes valid or invalid'
;
COMMENT ON COLUMN "kosh"."table_entity"."estimated_rows" IS 'Indicates the number of records in the table.'
;
COMMENT ON COLUMN "kosh"."table_entity"."inserts" IS 'number of inserts performed on the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."updates" IS 'number of updates performed on the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."deletes" IS 'number of deletes performed on the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."create_table_ts" IS 'table created timestamp'
;
COMMENT ON COLUMN "kosh"."table_entity"."modified_table_ts" IS 'table last modified timestamp'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_size" IS 'size of the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."num_columns" IS 'number of the columns in the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_layer" IS 'where table resides'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_space_name" IS 'Source name'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_format" IS 'format of the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."is_encrypted" IS 'whether it should be encrypted or not '
;
COMMENT ON COLUMN "kosh"."table_entity"."is_compressed" IS 'whether it should be compresses or not'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_type" IS 'type of the table like view or table'
;
COMMENT ON COLUMN "kosh"."table_entity"."table_type_owner" IS 'owner of the table'
;
COMMENT ON COLUMN "kosh"."table_entity"."valid_from_ts" IS 'Indicates when the record is inserted.'
;
COMMENT ON COLUMN "kosh"."table_entity"."valid_to_ts" IS 'Indicates till when the record is valid.'
;
COMMENT ON COLUMN "kosh"."table_entity"."crawl_id" IS 'The crawl instance associated with this record creation.'
;
COMMENT ON COLUMN "kosh"."table_entity"."prev_crawl_id" IS 'The crawl instance associated with an older record for this table meta-data.'
;
COMMENT ON COLUMN "kosh"."table_entity"."linneage_uuid" IS 'A unique identifier for a lineage document'
;
COMMENT ON COLUMN "kosh"."table_entity"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."table_entity"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."table_entity"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."table_entity"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Add keys for table kosh table_entity

ALTER TABLE "kosh"."table_entity" ADD CONSTRAINT "table_id_timestampkey" PRIMARY KEY ("table_id","valid_from_ts")
;

ALTER TABLE "kosh"."table_entity" ADD CONSTRAINT "Key7" UNIQUE ("datastore_id","component_id","instance_name","schema_name","table_id","valid_from_ts")
;

-- Table kosh crawl_xref

CREATE TABLE "kosh"."crawl_xref"(
 "crawl_id" Bigint NOT NULL,
 "crawl_prev_id" Bigint NOT NULL,
 "crawl_start_ts" Timestamp NOT NULL,
 "crawl_end_ts" Timestamp,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;


COMMENT ON TABLE "kosh"."crawl_xref" IS 'Each time the meta-data in kosh is updated it is associated with a crawl_id.  In order to allow an easy rollback from a failed crawl this table keeps track of the previous crawl id that is associated with each crawl id. '
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crawl_id" IS 'Uniquely identifies a single crawl process/job.'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crawl_prev_id" IS 'The unique identifier for the previous crawl process/job.'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crawl_start_ts" IS 'The time at which the crawl process/job started'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crawl_end_ts" IS 'The time at which the crawl process/job finished.'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."crawl_xref"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Create indexes for table kosh crawl_xref

CREATE INDEX "IX_Crawlxref_crawlid" ON "kosh"."crawl_xref" ("crawl_id")
;

-- Add keys for table kosh crawl_xref

ALTER TABLE "kosh"."crawl_xref" ADD CONSTRAINT "Key8" PRIMARY KEY ("crawl_id","crawl_prev_id")
;

-- Table kosh index_column

CREATE TABLE "kosh"."index_column"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "column_name" Text NOT NULL,
 "index_name" Text NOT NULL,
 "crawl_id" Bigint NOT NULL,
 "prev_crawl_id" Bigint,
 "ordinal_position" Integer,
 "sort_order" Text,
 "table_owner" Text,
 "table_name" Text,
 "valid_from_ts" Timestamp,
 "valid_to_ts" Timestamp,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."index_column"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "kosh"."index_column"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."index_column"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "kosh"."index_column"."table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."index_column"."column_name" IS 'name of the column'
;
COMMENT ON COLUMN "kosh"."index_column"."index_name" IS 'name of the index'
;
COMMENT ON COLUMN "kosh"."index_column"."crawl_id" IS 'The crawl instance associated with this record creation.'
;
COMMENT ON COLUMN "kosh"."index_column"."prev_crawl_id" IS 'The crawl instance associated with an older record for this table meta-data.'
;
COMMENT ON COLUMN "kosh"."index_column"."ordinal_position" IS 'The ordinal position of the column as defined when table was created.'
;
COMMENT ON COLUMN "kosh"."index_column"."sort_order" IS 'how it should be sorted'
;
COMMENT ON COLUMN "kosh"."index_column"."table_owner" IS 'owner of the table'
;
COMMENT ON COLUMN "kosh"."index_column"."table_name" IS 'name of the table'
;
COMMENT ON COLUMN "kosh"."index_column"."valid_from_ts" IS 'Indicates when the record is inserted.'
;
COMMENT ON COLUMN "kosh"."index_column"."valid_to_ts" IS 'Indicates till when the record is valid.'
;
COMMENT ON COLUMN "kosh"."index_column"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."index_column"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."index_column"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."index_column"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Add keys for table kosh index_column

ALTER TABLE "kosh"."index_column" ADD CONSTRAINT "Key9" PRIMARY KEY ("column_name","crawl_id","index_name","table_id")
;

-- Table kosh column_metadata

CREATE TABLE "kosh"."column_metadata"(
 "datastore_id" Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "table_owner" Text,
 "table_name" Text,
 "column_id" Bigint,
 "column_name" Text NOT NULL,
 "crawl_id" Bigint NOT NULL,
 "prev_crawl_id" Bigint,
 "data_type" Text NOT NULL,
 "data_length" int8,
 "data_precision" int8,
 "data_scale" int8,
 "is_nullable" Boolean,
 "ordinal_position" int8,
 "num_distinct" Bigint,
 "low_value" Text,
 "high_value" Text,
 "num_nulls" Bigint,
 "avg_col_len" Bigint,
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."column_metadata" IS 'This table is populated by a database crawler application/Bot.  The information that is put into this table is retrieved from the system tables maintained by the database server.  Depending on the frequency of the administrators running statistics and the type of sampling done when those statistics are run, this data may not be as accurate as that obtained and stored in the profiling tables.
Note this is a type 2 table in that records will be appended rather than updated (except for the ending timestamp).  '
;
COMMENT ON COLUMN "kosh"."column_metadata"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_metadata"."component_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_metadata"."instance_name" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_metadata"."schema_name" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_metadata"."table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_metadata"."column_name" IS 'The name of the column as known by the database system. DO WE NEED TO ADD A FIELD FOR DISPLAY NAME?'
;
COMMENT ON COLUMN "kosh"."column_metadata"."crawl_id" IS 'The crawl instance assocated with the creation of  this meta-data'
;
COMMENT ON COLUMN "kosh"."column_metadata"."prev_crawl_id" IS 'The crawl instance associated with the previous meta-data values for this column.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."data_type" IS 'The datatype for the column '
;
COMMENT ON COLUMN "kosh"."column_metadata"."data_length" IS 'The defined length and/or maximum length of the column data.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."data_precision" IS 'The number of digits allowed for numeric values'
;
COMMENT ON COLUMN "kosh"."column_metadata"."data_scale" IS 'The number of digits to the right of the decimal points allowed for numeric values.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."is_nullable" IS 'Indicates if the column can contain null values.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."ordinal_position" IS 'The ordinal position of the column as defined when table was created.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."num_distinct" IS 'The number of distinct data values held in the column.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."low_value" IS 'The lowest value held in the column - this may be affected by the sorting defined.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."high_value" IS 'The highest value held in the column - this may be affected by the sorting defined.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."num_nulls" IS 'The number of record for this column with null values.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."avg_col_len" IS 'The average length of data held in the column.  '
;
COMMENT ON COLUMN "kosh"."column_metadata"."valid_from_ts" IS 'The time when the data was populated for this record.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."column_metadata"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh column_metadata

ALTER TABLE "kosh"."column_metadata" ADD CONSTRAINT "Key10" PRIMARY KEY ("datastore_id","component_id","instance_name","schema_name","table_id","crawl_id","column_name","valid_from_ts")
;

-- Table kosh table_privileges

CREATE TABLE "kosh"."table_privileges"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "table_name" Text NOT NULL,
 "crawl_id" Bigint NOT NULL,
 "prev_crawl_id" Bigint,
 "grantee" Text NOT NULL,
 "grantor" Text NOT NULL,
 "privilege_type" Text NOT NULL,
 "is_grantable" Boolean NOT NULL,
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."table_privileges" IS 'This information is populated by the crawler from database system tables of the system being crawled.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_privileges"."component_id" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."table_privileges"."instance_name" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."table_privileges"."schema_name" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."table_privileges"."table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_privileges"."table_name" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_privileges"."crawl_id" IS 'The id of the crawler instance that creaetd this record.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."prev_crawl_id" IS 'The id of the previous crawler instance (if any)  that recorded information about this table.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."grantee" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_privileges"."grantor" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_privileges"."privilege_type" IS 'type of the privilege'
;
COMMENT ON COLUMN "kosh"."table_privileges"."is_grantable" IS 'granting permission'
;
COMMENT ON COLUMN "kosh"."table_privileges"."valid_from_ts" IS 'Indicates when the record is inserted.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."valid_to_ts" IS 'Indicates till when the record is valid.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."table_privileges"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."table_privileges"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."table_privileges"."mod_ts" IS 'Indicates the last time the record was modified.'
;


-- Add keys for table kosh table_privileges

ALTER TABLE "kosh"."table_privileges" ADD CONSTRAINT "Key11" PRIMARY KEY ("datastore_id","component_id","instance_name","schema_name","table_id","grantee","grantor","privilege_type","valid_from_ts")
;


-- Table kosh column_profile

CREATE TABLE "kosh"."column_profile"(
 "datastore_id" Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "column_id" Bigint NOT NULL,
 "profile_id" Bigint NOT NULL,
 "prev_profile_id" Bigint,
 "fuzzy_index" Bytea NOT NULL,
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "column_name" Text NOT NULL,
 "ordinal_position" Smallint NOT NULL,
 "column_datatype" Text NOT NULL,
 "total_count" Bigint,
 "non_null_count" Bigint,
 "null_count" Bigint,
 "distinct_count" Bigint,
 "is_numeric" Boolean NOT NULL,
 "num_spaces" int8 ,
 "min" Text,
 "max" Text,
 "avg" Text,
 "min_string_length" Integer,
 "max_string_length" Integer,
 "empty_string_count" Bigint,
 "non_empty_string_count" Bigint,
 "avg_string_length" Bigint,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."column_profile"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_profile"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "kosh"."column_profile"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."column_profile"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "kosh"."column_profile"."table_id" IS 'A unique id given to a table '
;
COMMENT ON COLUMN "kosh"."column_profile"."is_numeric" IS 'Indicates if the value is number or not.'
;
COMMENT ON COLUMN "kosh"."column_profile"."ordinal_position" IS 'The ordinal position of the column as defined when table was created.'
;
COMMENT ON COLUMN "kosh"."column_profile"."valid_from_ts" IS 'Indicates when the record is inserted.'
;
COMMENT ON COLUMN "kosh"."column_profile"."valid_to_ts" IS 'Till when it is valid .'
;
COMMENT ON COLUMN "kosh"."column_profile"."null_count" IS 'Number of null values in that column .'
;
COMMENT ON COLUMN "kosh"."column_profile"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."column_profile"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."column_profile"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."column_profile"."mod_ts" IS 'Indicates the last time the record was modified.'
;
-- Add keys for table kosh column_profile

ALTER TABLE "kosh"."column_profile" ADD CONSTRAINT "Key13" PRIMARY KEY ("datastore_id","component_id","instance_name","schema_name","table_id","column_id","profile_id","valid_from_ts")
;

-- Table kosh column_frequency

CREATE TABLE "kosh"."column_frequency"(
 "datastore_id" Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "column_id" Bigint NOT NULL,
 "profile_id" Bigint NOT NULL,
 "prev_profile_id" Bigint,
 "column_name" Text,
 "column_value" Text,
 "frequency" Bigint,
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."column_frequency"."datastore_id" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."component_id" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."instance_name" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."schema_name" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."table_id" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."column_id" IS 'see ancestor'
;
COMMENT ON COLUMN "kosh"."column_frequency"."profile_id" IS 'The instance of the profiling process that created this record.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."prev_profile_id" IS 'The instance of the previous profiling process that profiled this column.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."column_name" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."column_frequency"."column_value" IS 'A value present in the current column.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."frequency" IS 'The number of occurences of the specified value in the column.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."valid_from_ts" IS 'This shouild be related to the time this record was created by the profiling process.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."crt_by" IS 'The person or process creating the record.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."mod_by" IS 'The person or process modifying the record.'
;
COMMENT ON COLUMN "kosh"."column_frequency"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh column_frequency

-- Table kosh file_system_component

CREATE TABLE "kosh"."file_system_component"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "hostname" Text,
 "root_location_path" Text NOT NULL,
 "metatags" Json,
 "source_type" Text,
 "follow_links" Boolean,
 "recursion_depth" Smallint,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."file_system_component" IS 'This table contains one record for each crawl/ingest entry point of a file system.  For instance, there may be a host with several file system mount points that need to be crawled / ingested independently.  In that case there would be one record for each mount point.  
This table will typically be populated by an API and driven by a business decision to include the component in the ingestion process.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."file_system_component"."component_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."file_system_component"."hostname" IS 'Each file system source should be associated with host.  Preferably this should be a fully qualified DNS name.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."root_location_path" IS 'The starting directory on the file system that needs to be crawled and/or ingested.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."source_type" IS 'This could be used to indicate the OS of the underlying system or some other characteristic that impacts crawling.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."follow_links" IS 'Typically crawling will not follow links - this is optional.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."recursion_depth" IS 'The number of sub-directories to recurse through.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."crt_by" IS 'The person or process that created the record.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."mod_by" IS 'The person or process that modified the record.'
;
COMMENT ON COLUMN "kosh"."file_system_component"."mod_ts" IS 'The time of record modification'
;

-- Add keys for table kosh file_system_component

ALTER TABLE "kosh"."file_system_component" ADD CONSTRAINT "Key16" PRIMARY KEY ("datastore_id","component_id")
;

-- Table kosh file_linux_entity

CREATE TABLE "kosh"."file_linux_entity"(
 "datastore_id"  Bigint,
 "component_id" Bigint,
 "entity_id" Bigint NOT NULL,
 "crawl_id" Bigint,
 "prev_crawl_id" Bigint,
 "parent_id" Bigint,
 "entity_type" Text,
 "classification" Text,
 "name_in_source" Text NOT NULL,
 "source_abs_path" Text NOT NULL,
 "source_rel_path" Text NOT NULL,
 "source_create_ts" Timestamp NOT NULL,
 "is_link" Boolean,
 "is_dir" Boolean,
 "is_binary" Boolean,
 "exists" Boolean,
 "size" Bigint,
 "permission" Character(10),
 "owner_id" Text,
 "owner_grp" Text,
 "md5sum" Character(32),
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "lineage_uuid" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."entity_id" IS 'A unique identifier for this entity in the table'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."crawl_id" IS 'The crawl instance that populated this record.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."prev_crawl_id" IS 'The crawl instance that populated the previous record about this entity.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."parent_id" IS 'The id of the parent (a directory for a file and subdirectory)'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."entity_type" IS 'Type of entity - in this case should be file,directory, or link.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."classification" IS 'This could relate to the type of entity  (TODO: THINK ABOUT THIS)'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."name_in_source" IS 'The name of the entity in the source (no path information)'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."source_abs_path" IS 'The location/path of this entity in the source)'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."source_create_ts" IS 'The creation time for the entity in the source.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."is_link" IS 'Indicates if the entity is a link.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."is_dir" IS 'Indicates if the entity is a file system directory.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."is_binary" IS 'Indicates if the file is normal or binary.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."exists" IS 'In the case of crawler where a file / directory can be be determined to have been deleted, this can be set.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."size" IS 'The size in bytes of the entity in the source system.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."permission" IS 'A linux style permission string drwxrwxrwx'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."owner_id" IS 'The user who owns the file or directory.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."owner_grp" IS 'The group who owns the file or directory.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."md5sum" IS 'The md5 hash of the entity '
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."valid_from_ts" IS 'This relates to the crawl instance.  The valid from should be the time the crawl encountered this entity and created this record.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."valid_to_ts" IS 'This relates to the crawl instance.  For the most recent crawl, the value should be equivalent to 9999-12-31.  For previous crawls, the end time should be when the record was updated because another crawl created a new record.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."crt_by" IS 'The process or person who created this record.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."mod_by" IS 'The process or person who modified this record.'
;
COMMENT ON COLUMN "kosh"."file_linux_entity"."mod_ts" IS 'The time of record modification.'
;

-- Create indexes for table kosh file_linux_entity

CREATE INDEX "IX_Relationship59" ON "kosh"."file_linux_entity" ("datastore_id","component_id")
;

-- Add keys for table kosh file_linux_entity

ALTER TABLE "kosh"."file_linux_entity" ADD CONSTRAINT "Key172" PRIMARY KEY ("entity_id")
;

-- Table kosh unstructured_component

CREATE TABLE "kosh"."unstructured_component"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "system_name" Text NOT NULL,
 "classification" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."unstructured_component" IS 'Unstructured components are things like Documentum data stores, Sharepoint, etc.   These system are used to store documents like PDFs, excel spreadsheets, word documents, etc.'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."component_id" IS 'A unique identifier for a specific component of a source'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."system_name" IS 'The system name might be example cabinet name'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."classification" IS 'Classification of system'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."crt_ts" IS 'The time of record creation'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."unstructured_component"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh unstructured_component

ALTER TABLE "kosh"."unstructured_component" ADD CONSTRAINT "Key20" PRIMARY KEY ("datastore_id","component_id")
;

-- Table kosh unstructured_entity

CREATE TABLE "kosh"."unstructured_entity"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "entity_id" Bigint NOT NULL,
 "crawl_id" Bigint,
 "prev_crawl_id" Bigint,
 "resource_name" Text NOT NULL,
 "submit_date" Date NOT NULL,
 "action" Text NOT NULL,
 "source_type" Text NOT NULL,
 "content_id" Text NOT NULL,
 "entity_content_type" Text,
 "entity_path" Text NOT NULL,
 "entity_name" Text NOT NULL,
 "entity_size" Bigint NOT NULL,
 "lineage_uuid" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."unstructured_entity" IS 'Each distinct item in a document database and that has been brought in or should be brought into the Hadoop platform should have a record in this table.The table is populated by a crawler and/or an ingestion process '
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."datastore_id" IS 'see parent.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."component_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."entity_id" IS 'A unique identifier for the entity in this table.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."crawl_id" IS 'The crawl instance that populated this record.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."prev_crawl_id" IS 'The crawl instance that populated the previous record about this entity.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."resource_name" IS 'This is basically the name of the entity, typically a document name.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."submit_date" IS 'The date on which the document was submitted to the source system.  This is analogous to a file creation data in a file system.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."action" IS 'Action related to the entity in the source system.  Could be add/delete/update/etc.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."source_type" IS 'The source type (this is somewhat redundant because the info may be in the parent record) '
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."content_id" IS 'The unique identifier of the entity in the source system.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."entity_content_type" IS 'You can think of this as the underlying encoding of the document.  PDF, JSON,etc.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."entity_path" IS 'The path in Hadoop platform to the ingested entity.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."entity_name" IS 'The name of the entity in Hadoop platform'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."entity_size" IS 'The size in bytes of the entity.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."unstructured_entity"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh unstructured_entity

ALTER TABLE "kosh"."unstructured_entity" ADD CONSTRAINT "Key21" PRIMARY KEY ("datastore_id","component_id","entity_id")
;

-- Table kosh profile_xref

CREATE TABLE "kosh"."profile_xref"(
 "profile_id" Bigint NOT NULL,
 "prev_profile_id" Bigint NOT NULL,
 "profile_start_ts" Timestamp NOT NULL,
 "profile_end_ts" Timestamp,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

COMMENT ON TABLE "kosh"."profile_xref" IS 'Each time the profile  kosh is updated it is associated with a profile_id In order to allow an easy rollback from a failed profile this table keeps track of the previous profile id  that is associated with each [profile id. '
;
COMMENT ON COLUMN "kosh"."profile_xref"."profile_id" IS 'A unique identifier assigened each time a job that does profiling is instantiated.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."prev_profile_id" IS 'The previous profiling instance that was performed.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."profile_start_ts" IS 'The time the profiling started.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."profile_end_ts" IS 'The time the profiling finiished.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."profile_xref"."mod_ts" IS 'The time of record modification.'
;

-- Create indexes for table kosh profile_xref

CREATE INDEX "IX_profilexref_profileid" ON "kosh"."profile_xref" ("profile_id")
;

-- Add keys for table kosh profile_xref

ALTER TABLE "kosh"."profile_xref" ADD CONSTRAINT "Key29" PRIMARY KEY ("profile_id","prev_profile_id")
;

-- Table kosh data_entity_lineage

CREATE TABLE "kosh"."data_entity_lineage"(
 "lineage_uuid" Text NOT NULL,
 "lineage_document" Json NOT NULL,
 "validity_ts" Timestamp NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."data_entity_lineage"."lineage_uuid" IS 'A unique identifier for a lineage document'
;
COMMENT ON COLUMN "kosh"."data_entity_lineage"."lineage_document" IS 'This is a JSON document that provides information on the data lineage of this datastore component.  For instance if a curation process creates a new datastore artifact, the information on the sources and transformations involved should be in this document.  The detail for a relational artifact will need to be down to the column level since each column may have a different lineage pattern.'
;
COMMENT ON COLUMN "kosh"."data_entity_lineage"."validity_ts" IS 'For the current record, this should equivalent to 9999-12-31.  The previous record validity_ts needs to be reset when a new record for a datastore is created.'
;
COMMENT ON COLUMN "kosh"."data_entity_lineage"."crt_by" IS 'The person or process that created the record.  This will almost always be a process.'
;
COMMENT ON COLUMN "kosh"."data_entity_lineage"."crt_ts" IS 'The time of record creation'
;

-- Add keys for table kosh data_entity_lineage

ALTER TABLE "kosh"."data_entity_lineage" ADD CONSTRAINT "Key35" PRIMARY KEY ("lineage_uuid")
;

ALTER TABLE "kosh"."data_entity_lineage" ADD CONSTRAINT "lineage_id" UNIQUE ("lineage_uuid")
;

-- Table kosh bot_registry

CREATE TABLE "kosh"."bot_registry"(
 "uuid" UUID NOT NULL,
 "process_id"  int8, 
 "name" Text NOT NULL,
 "hostname" Text,
  "cluster_name" text, 
 "state" Text,
 "topic" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."bot_registry"."uuid" IS 'transaction UUID'
;
COMMENT ON COLUMN "kosh"."bot_registry"."process_id" IS 'A unique id given to the process'
;
COMMENT ON COLUMN "kosh"."bot_registry"."name" IS 'Name of the bot tied to the uuid'
;
COMMENT ON COLUMN "kosh"."bot_registry"."hostname" IS 'name of the host'
;
COMMENT ON COLUMN "kosh"."bot_registry"."cluster_name" IS 'name of the cluster '
;
COMMENT ON COLUMN "kosh"."bot_registry"."state" IS 'state of the bot'
;
COMMENT ON COLUMN "kosh"."bot_registry"."topic" IS 'to Which topic it is subscribed'
;
COMMENT ON COLUMN "kosh"."bot_registry"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh bot_registry

CREATE INDEX "IX_botregistry_name" ON "kosh"."bot_registry" ("name")
;

CREATE INDEX "IX_botregistry_uuid" ON "kosh"."bot_registry" ("uuid")
;

-- Add keys for table kosh bot_registry

ALTER TABLE "kosh"."bot_registry" ADD CONSTRAINT "Key36" PRIMARY KEY ("uuid","name")
;

ALTER TABLE "kosh"."bot_registry" ADD CONSTRAINT "Keyuuid" UNIQUE ("uuid")
;

-- Table kosh bot_status

CREATE TABLE "kosh"."bot_status"(
 "uuid" UUID NOT NULL,
 "name" Text NOT NULL,
 "state" Text NOT NULL,
 "job_profile" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."bot_registry"."uuid" IS 'Transaction UUID'
;
COMMENT ON COLUMN "kosh"."bot_registry"."name" IS 'Name of the bot tied to the uuid'
;
COMMENT ON COLUMN "kosh"."bot_registry"."state" IS 'state of the bot'
;
COMMENT ON COLUMN "kosh"."bot_registry"."job_profile" IS 'Status of the job'
;
COMMENT ON COLUMN "kosh"."bot_registry"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."bot_registry"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh bot_status

ALTER TABLE "kosh"."bot_status" ADD CONSTRAINT "Key37" PRIMARY KEY ("uuid","name")
;

ALTER TABLE "kosh"."bot_status" ADD CONSTRAINT "KeyUU" UNIQUE ("uuid")
;

-- Table kosh data_processing_stats

CREATE TABLE "kosh"."data_processing_stats"(
 "uuid" UUID NOT NULL,
 "name" Text NOT NULL,
 "etl_name" Text NOT NULL,
 "records_count" Bigint,
 "records_processed" Bigint,
 "data_size" Bigint,
 "Initiator" Text,
 "crt_by" Text,
 "crt_ts" Timestamp,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."uuid" IS 'transaction UUID'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."name" IS 'Name of the bot tied to the uuid'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."etl_name" IS 'Name of the etl'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."records_count" IS 'Total number of records from source to be processed'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."records_processed" IS 'Total number of records processed'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."data_size" IS 'Total byte size of data'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."data_processing_stats"."mod_ts" IS 'The time of record modification.'
;

-- Create indexes for table kosh data_processing_stats

CREATE INDEX "IX_dataprocessingstats_etlname" ON "kosh"."data_processing_stats" ("etl_name")
;

-- Add keys for table kosh data_processing_stats

ALTER TABLE "kosh"."data_processing_stats" ADD CONSTRAINT "Key38" PRIMARY KEY ("etl_name")
;

-- Table kosh errormessages

CREATE TABLE "kosh"."errormessages"(
 "uuid" UUID NOT NULL,
 "name" Text NOT NULL,
 "error_id" Bigint NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."errormessages"."uuid" IS 'Transaction UUID'
;
COMMENT ON COLUMN "kosh"."errormessages"."name" IS 'Name of the bot tied to the uuid'
;
COMMENT ON COLUMN "kosh"."errormessages"."error_id" IS 'Error Id of the error message encountered'
;
COMMENT ON COLUMN "kosh"."errormessages"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."errormessages"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."errormessages"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."errormessages"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh errormessages


CREATE INDEX "IX_ErrorMessages_Name" ON "kosh"."errormessages" ("name")
;

CREATE INDEX "IX_errormsgs_to_errors" ON "kosh"."errormessages" ("error_id")
;

-- Add keys for table kosh errormessages

ALTER TABLE "kosh"."errormessages" ADD CONSTRAINT "UUID" PRIMARY KEY ("uuid","name")
;

-- Table kosh errors

CREATE TABLE "kosh"."errors"(
 "error_id" Bigint NOT NULL,
 "error_message" Text NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."errors"."error_id" IS 'Unique Error number for each unique message'
;
COMMENT ON COLUMN "kosh"."errors"."error_message" IS 'Information about the error'
;
COMMENT ON COLUMN "kosh"."errors"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."errors"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."errors"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."errors"."mod_ts" IS 'The time of record modification.'
;

-- Add keys for table kosh errors

ALTER TABLE "kosh"."errors" ADD CONSTRAINT "Key39" PRIMARY KEY ("error_id")
;

ALTER TABLE "kosh"."errors" ADD CONSTRAINT "error_id" UNIQUE ("error_id")
;

-- Table kosh job_metadata

CREATE TABLE "kosh"."job_metadata"(
 "job_id" bigSerial NOT NULL,
 "job_name" Text,
 "job_description" Text,
 "type_of_job" Text,
 "job_added_dt" Timestamp,
 "job_owner" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."job_metadata"."job_id" IS 'A unique id given to the job'
;
COMMENT ON COLUMN "kosh"."job_metadata"."job_name" IS 'name of the job'
;
COMMENT ON COLUMN "kosh"."job_metadata"."job_description" IS 'description related to job'
;
COMMENT ON COLUMN "kosh"."job_metadata"."type_of_job" IS 'Type of the job'
;
COMMENT ON COLUMN "kosh"."job_metadata"."job_added_dt" IS 'job added timestamp'
;
COMMENT ON COLUMN "kosh"."job_metadata"."job_owner" IS 'owner of the job'
;
COMMENT ON COLUMN "kosh"."job_metadata"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."job_metadata"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."job_metadata"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."job_metadata"."mod_ts" IS 'The time of record modification.'
;


-- Add keys for table kosh job_metadata

ALTER TABLE "kosh"."job_metadata" ADD CONSTRAINT "Key40" PRIMARY KEY ("job_id")
;

-- Table kosh table_load_stats

CREATE TABLE "kosh"."table_load_stats"(
 "dest_table_id" Bigint NOT NULL,
 "process_id" int8 NOT NULL,
 "job_id" int8 NOT NULL,
 "full_table_name" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."table_load_stats"."dest_table_id" IS 'destination table id '
;
COMMENT ON COLUMN "kosh"."table_load_stats"."process_id" IS 'A unique id given to the process'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."job_id" IS 'A unique id given to the job'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."full_table_name" IS 'It is a combination of schema_name,instance_name,host_name,table_name'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."table_load_stats"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh table_load_stats

CREATE INDEX "IX_JobId" ON "kosh"."table_load_stats" ("job_id")
;

-- Add keys for table kosh table_load_stats

ALTER TABLE "kosh"."table_load_stats" ADD CONSTRAINT "Key41" PRIMARY KEY ("process_id","dest_table_id","crt_ts")
;

-- Table kosh job_run_stats

CREATE TABLE "kosh"."job_run_stats"(
    process_id                     int8                NOT NULL  ,
    dest_table_id                  INT8                NOT NULL  ,
    job_id                         INT8                          ,
    metatags                       JSON           NOT NULL  ,
    crt_by                         TEXT                NOT NULL  ,
    crt_ts                         TIMESTAMP     NOT NULL  ,
    mod_by                         TEXT                          ,
    mod_ts                         TIMESTAMP               ) 
;
COMMENT ON COLUMN "kosh"."job_run_stats"."process_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."dest_table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."job_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."job_run_stats"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh job_run_stats

CREATE INDEX "IX_Relationship39" ON "kosh"."job_run_stats" ("job_id")
;

CREATE INDEX "IX_Relationship47" ON "kosh"."job_run_stats" ("process_id","dest_table_id")
;

-- Table kosh table_load_result

CREATE TABLE "kosh"."table_load_result"(
 "dest_table_id" Bigint NOT NULL,
 "process_id" Bigint NOT NULL,
 "job_id" Integer NOT NULL,
 "metatags" Json NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."table_load_result"."process_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_load_result"."dest_table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_load_result"."job_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_load_result"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."table_load_result"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."table_load_result"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."table_load_result"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh table_load_result

CREATE INDEX "IX_Relationship40" ON "kosh"."table_load_result" ("job_id")
;



-- Table kosh structured_jobtotable

CREATE TABLE "kosh"."structured_jobtotable"(
 "job_id" Bigint NOT NULL,
 "table_id" Bigint NOT NULL,
 "table_type" Text NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."job_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."table_type" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."crt_by" IS 'The process or person who created the record.'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."mod_by" IS 'The process or person who modified the record.'
;
COMMENT ON COLUMN "kosh"."structured_jobtotable"."mod_ts" IS 'The time of record modification.'
;
-- Create indexes for table kosh structured_jobtotable

CREATE INDEX "IX_Relationship44" ON "kosh"."structured_jobtotable" ("job_id")
;

-- Add keys for table kosh structured_jobtotable

ALTER TABLE "kosh"."structured_jobtotable" ADD CONSTRAINT "Key44" PRIMARY KEY ("table_id")
;



-- Table kosh table_scheduler

CREATE TABLE "kosh"."table_scheduler"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "instance_name" Text NOT NULL,
 "schema_name" Text NOT NULL,
 "table_id" Bigint NOT NULL,
 "valid_to_ts" Timestamp,
 "valid_from_ts" Timestamp,
 "is_active" Boolean,
 "refresh_freq" Character(13),
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."table_scheduler"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."schema_name" IS 'The schema for this relational component'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."table_id" IS 'A unique id given to the table'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."valid_from_ts" IS 'Indicates when the record is inserted.'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."valid_to_ts" IS 'Indicates till when the record is valid.'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."crt_ts" IS 'The time at which the record was created
'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."mod_ts" IS 'Indicates the last time the record was modified.'
;
-- Add keys for table kosh table_scheduler

ALTER TABLE "kosh"."table_scheduler" ADD CONSTRAINT "Key46" PRIMARY KEY ("datastore_id","component_id","instance_name","schema_name","table_id","valid_from_ts")
;

ALTER TABLE "kosh"."table_scheduler" ADD CONSTRAINT "tablekey" UNIQUE ("table_id")
;

-- Table kosh file_scheduler

CREATE TABLE "kosh"."file_scheduler"(
 "entity_id" Bigint NOT NULL,
 "is_active" Boolean,
 "crawl_freq" Character(13) NOT NULL,
 "refresh_freq" Character(13),
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."file_scheduler"."entity_id" IS 'Id given to the file'
;
COMMENT ON COLUMN "kosh"."file_scheduler"."is_active" IS 'Decides whether to fetch data or not '
;
COMMENT ON COLUMN "kosh"."file_scheduler"."crawl_freq" IS 'a cron format string to indicate the default crawl frequency for this component of the source.'
;
COMMENT ON COLUMN "kosh"."file_scheduler"."refresh_freq" IS 'a cron format string to indicate the default refresh frequency for this component of the source.'
;
COMMENT ON COLUMN "kosh"."file_scheduler"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."file_scheduler"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."file_scheduler"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."table_scheduler"."mod_ts" IS 'Indicates the last time the record was modified.'
;
-- Create indexes for table kosh file_scheduler

CREATE INDEX "IX_Relationship54" ON "kosh"."file_scheduler" ("entity_id")
;

-- Add keys for table kosh file_scheduler

ALTER TABLE "kosh"."file_scheduler" ADD CONSTRAINT "Key47" PRIMARY KEY ("entity_id")
;

ALTER TABLE "kosh"."file_scheduler" ADD CONSTRAINT "Key48" UNIQUE ("entity_id")
;

-- Table kosh job_load_result

Create  table kosh.job_load_result (
    bot_name                       Text                  ,
    process_context                Text                  ,
    process_id                     INT8                          ,
    task_name                      VARCHAR(255)                  ,
    status                         BOOL                          ,
    end_ts                         TIMESTAMP               ,
    start_ts                       TIMESTAMP               ) 
with(oids=false);

COMMENT ON COLUMN "kosh"."job_load_result"."bot_name" IS 'Name of the bot'
;
COMMENT ON COLUMN "kosh"."job_load_result"."process_context" IS 'Task done by a particular bot'
;
COMMENT ON COLUMN "kosh"."job_load_result"."process_id" IS 'A unique id given to the process'
;
COMMENT ON COLUMN "kosh"."job_load_result"."task_name" IS 'Name of the task'
;
COMMENT ON COLUMN "kosh"."job_load_result"."status" IS 'Status of the bot'
;
COMMENT ON COLUMN "kosh"."job_load_result"."end_ts" IS 'Ending timestamp'
;
COMMENT ON COLUMN "kosh"."job_load_result"."start_ts" IS 'Starting timestamp'
;


-- Table kosh filelinux_load_stats

CREATE TABLE "kosh"."filelinux_load_stats"(
 "entity_id" Bigint NOT NULL,
 "crawl_id" Bigint,
 "file_name" Text,
 "harfile_name" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."entity_id" IS 'A unique id given to the file'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."crawl_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."file_name" IS 'Name of the file'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."harfile_name" IS 'Name given to compressed set of files'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."filelinux_load_stats"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Add keys for table kosh filelinux_load_stats

ALTER TABLE "kosh"."filelinux_load_stats" ADD CONSTRAINT "Key501" PRIMARY KEY ("entity_id")
;

-- Table kosh connection_error

CREATE TABLE "kosh"."connection_error"(
 "datastore_id" Bigint NOT NULL,
 "connection_error_desc" Character varying,
 "crawl_id" Bigint,
 "prev_crawl_id" Bigint,
 "added_ts" Timestamp,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."connection_error"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."connection_error"."crawl_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."connection_error"."connection_error_desc" IS 'Description of the error'
;
COMMENT ON COLUMN "kosh"."connection_error"."prev_crawl_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."connection_error"."added_ts" IS 'error added timestamp'
;
COMMENT ON COLUMN "kosh"."connection_error"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."connection_error"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."connection_error"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."connection_error"."mod_ts" IS 'Indicates the last time the record was modified.'
;
-- Table kosh process_id_table_map

CREATE TABLE "kosh"."process_id_table_map"(
    process_id                     INT8                          ,
    table_id                       INT8                          ,
    created_ts                     TIMESTAMP               ,
    batch_id                       INT8                          ,
    batch_name                     VARCHAR(255)                  ,
    environment                    VARCHAR(10)                   ) 
with(oids=false)
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."process_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."table_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."created_ts" IS 'entry timestamp'
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."batch_id" IS 'Id given set of tables started at a time for ingestion'
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."batch_name" IS 'Name given set of tables started at a time for ingestion'
;
COMMENT ON COLUMN "kosh"."process_id_table_map"."environment" IS 'Environment name where ingestion is running'
;

-- Table kosh hive_datatype_mapping

CREATE TABLE "kosh"."hive_datatype_mapping"(
 "type_id" Smallint NOT NULL,
 "source_type" Character varying(255),
 "source_datatype_name" Character varying(255),
 "hive_datatype_name" Character varying(255),
 "hive_stg_func_name" Character varying(255),
 "isblob" Boolean,
 "avro_datatype_name" Character varying(255),
 "avro_stg_func_name" Character varying(255),
 "hive_insert_stg_func_name" Character varying(255),
 "avro_create_stg_func_name" Character varying(255),
 "hive_view_stg_func_name" Character varying(255)
)
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."type_id" IS 'Unique id'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."source_type" IS 'Type of the source'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."source_datatype_name" IS 'Datatype of the source'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."hive_datatype_name" IS 'Datatype of the hive'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."hive_stg_func_name" IS 'Name given for the datatype conversion from source to hive'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."isblob" IS 'Whether is it blob or not'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."avro_datatype_name" IS 'Datatype of the avro'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."avro_stg_func_name" IS 'Name given for the datatype conversion source to avro'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."hive_insert_stg_func_name" IS 'Name given for the datatype conversion source from hive'
;
COMMENT ON COLUMN "kosh"."hive_datatype_mapping"."hive_view_stg_func_name" IS 'Same as Hive'
;
-- Add keys for table kosh hive_datatype_mapping

ALTER TABLE "kosh"."hive_datatype_mapping" ADD CONSTRAINT "Key53" PRIMARY KEY ("type_id")
;

-- Table kosh file_window_entity

CREATE TABLE "kosh"."file_window_entity"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "entity_id" Bigint NOT NULL,
 "crawl_id" Bigint,
 "prev_crawl_id" Bigint,
 "parent_id" Bigint,
 "entity_type" Text,
 "classification" Text,
 "name_in_source" Text NOT NULL,
 "source_abs_path" Text NOT NULL,
 "source_rel_path" Text NOT NULL,
 "source_create_ts" Timestamp NOT NULL,
 "is_link" Boolean,
 "is_dir" Boolean,
 "is_binary" Boolean,
 "exists" Boolean,
 "size" Bigint,
 "permission" Character(10),
 "owner_id" Text,
 "owner_grp" Text,
 "md5sum" Character(32),
 "valid_from_ts" Timestamp NOT NULL,
 "valid_to_ts" Timestamp NOT NULL,
 "lineage_uuid" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."file_window_entity"."entity_id" IS 'A unique identifier for this entity in the table'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."crawl_id" IS 'The crawl instance that populated this record.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."prev_crawl_id" IS 'The crawl instance that populated the previous record about this entity.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."parent_id" IS 'The id of the parent (a directory for a file and subdirectory)'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."entity_type" IS 'Type of entity - in this case should be file,directory, or link.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."classification" IS 'This could relate to the type of entity  (TODO: THINK ABOUT THIS)'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."name_in_source" IS 'The name of the entity in the source (no path information)'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."source_abs_path" IS 'The location/path of this entity in the source)'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."source_create_ts" IS 'The creation time for the entity in the source.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."is_link" IS 'Indicates if the entity is a link.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."is_dir" IS 'Indicates if the entity is a file system directory.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."is_binary" IS 'Indicates if the file is normal or binary.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."exists" IS 'In the case of crawler where a file / directory can be be determined to have been deleted, this can be set.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."size" IS 'The size in bytes of the entity in the source system.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."permission" IS 'A linux style permission string drwxrwxrwx'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."owner_id" IS 'The user who owns the file or directory.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."owner_grp" IS 'The group who owns the file or directory.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."md5sum" IS 'The md5 hash of the entity '
;
COMMENT ON COLUMN "kosh"."file_window_entity"."valid_from_ts" IS 'This relates to the crawl instance.  The valid from should be the time the crawl encountered this entity and created this record.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."valid_to_ts" IS 'This relates to the crawl instance.  For the most recent crawl, the value should be equivalent to 9999-12-31.  For previous crawls, the end time should be when the record was updated because another crawl created a new record.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."crt_by" IS 'The process or person who created this record.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."crt_ts" IS 'The time of record creation.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."mod_by" IS 'The process or person who modified this record.'
;
COMMENT ON COLUMN "kosh"."file_window_entity"."mod_ts" IS 'The time of record modification.'
;

-- Create indexes for table kosh file_window_entity

CREATE INDEX "IX_Relationship58" ON "kosh"."file_window_entity" ("datastore_id","component_id")
;

-- Add keys for table kosh file_window_entity

ALTER TABLE "kosh"."file_window_entity" ADD CONSTRAINT "Key171" PRIMARY KEY ("datastore_id","component_id","entity_id")
;

-- Table kosh filewindow_load_stats

CREATE TABLE "kosh"."filewindow_load_stats"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "entity_id" Bigint NOT NULL,
 "job_id" Bigint,
 "crawl_id" Bigint,
 "file_name" Text,
 "harfile_name" Text,
 "metatags" Json,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."component_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."entity_id" IS 'A unique id given to the file'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."crawl_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."file_name" IS 'Name of the file'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."harfile_name" IS 'Name given to compressed set of files '
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."filewindow_load_stats"."mod_ts" IS 'Indicates the last time the record was modified.'
;
-- Add keys for table kosh filewindow_load_stats

ALTER TABLE "kosh"."filewindow_load_stats" ADD CONSTRAINT "Key502" PRIMARY KEY ("datastore_id","component_id","entity_id")
;

-- Table kosh database_properties

CREATE TABLE "kosh"."database_properties"(
 "id" Smallint,
 "source_type" Character varying(256),
 "jdbc_driver" Character varying(256)
)
;
COMMENT ON COLUMN "kosh"."database_properties"."id" IS 'A unique id given source_type'
;
COMMENT ON COLUMN "kosh"."database_properties"."source_type" IS 'Type of the source'
;
COMMENT ON COLUMN "kosh"."database_properties"."jdbc_driver" IS 'Jdbc driver of the source_type'
;

-- Table kosh data_spider_verificaton

CREATE TABLE "kosh"."data_spider_verification"(
 "datastore_id" Bigint,
 "table_id" Bigint,
 "instance_name" Character varying(255),
 "table_owner" Character varying(255),
 "schema_name" Character varying(255),
 "table_name" Character varying(255),
 "table_format" Character varying(255),
 "column_name" Character varying(255),
 "flag" Character varying(255),
 "added_ts" Date,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."table_name" IS 'Name of the table '
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."table_owner" IS 'Who created the table in the source level'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."column_name" IS 'see parent'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."added_ts" IS 'entry timestamp'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."table_format" IS 'format of the table i.e oracle'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."data_spider_verification"."mod_ts" IS 'Indicates the last time the record was modified.'
;

-- Table kosh.log_table

Create  table "kosh"."log_table" (
    "log_id"                         INT8                          ,
    "log_type"                       VARCHAR(128)                  ,
    "log_message_type "              VARCHAR(128)                  ,
    "log_message"                    TEXT                          ,
    "added_ts"                       TIMESTAMP             ,
    "crt_by"  VARCHAR(128) NOT NULL,
    "crt_ts" Timestamp NOT NULL,
    "mod_by"  VARCHAR(128)  ,
 "mod_ts" Timestamp  ) 
;
COMMENT ON COLUMN "kosh"."log_table"."log_id" IS 'A unique id to the log'
;
COMMENT ON COLUMN "kosh"."log_table"."log_type" IS 'Type of log'
;
COMMENT ON COLUMN "kosh"."log_table"."log_message_type" IS 'To which application this message belongs'
;
COMMENT ON COLUMN "kosh"."log_table"."log_message" IS 'message of the log'
;
COMMENT ON COLUMN "kosh"."log_table"."added_ts" IS 'log added timestamp'
;
COMMENT ON COLUMN "kosh"."log_table"."crt_by" IS 'Indicates the process or entity that created the record'
;
COMMENT ON COLUMN "kosh"."log_table"."crt_ts" IS 'The time at which the record was created'
;
COMMENT ON COLUMN "kosh"."log_table"."mod_by" IS 'Indicates the process or entity that modified the record.'
;
COMMENT ON COLUMN "kosh"."log_table"."mod_ts" IS 'Indicates the last time the record was modified.'
;




-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "kosh"."datastore_domain" ADD CONSTRAINT "domain_assignments" FOREIGN KEY ("datastore_id") REFERENCES "kosh"."datastore_inventory" ("datastore_id") ON DELETE CASCADE ON UPDATE NO ACTION
;

COMMENT ON CONSTRAINT "domain_assignments" ON "kosh"."datastore_domain" IS 'An inventoried source can have multiple domains associated with it.  It is not mandatory that a source is associated with a domain.'
;

ALTER TABLE "kosh"."datastore_contact" ADD CONSTRAINT "datainv to child entity" FOREIGN KEY ("datastore_id") REFERENCES "kosh"."datastore_inventory" ("datastore_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."datastore_component" ADD CONSTRAINT "source_2_component" FOREIGN KEY ("datastore_id") REFERENCES "kosh"."datastore_inventory" ("datastore_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."relational_component" ADD CONSTRAINT "Relationship4" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."datastore_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."datastore_component" ADD CONSTRAINT "conproftodatacomp" FOREIGN KEY ("connection_profile_id") REFERENCES "kosh"."connection_profile" ("connection_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."table_entity" ADD CONSTRAINT "relcomp to tableentity" FOREIGN KEY ("datastore_id", "component_id", "instance_name", "schema_name") REFERENCES "kosh"."relational_component" ("datastore_id", "component_id", "instance_name", "schema_name") ON DELETE NO ACTION ON UPDATE NO ACTION
;


ALTER TABLE "kosh"."column_profile" ADD CONSTRAINT "tableentity to colprof" FOREIGN KEY ("datastore_id", "component_id", "instance_name", "schema_name", "table_id","valid_from_ts") REFERENCES "kosh"."table_entity" ("datastore_id", "component_id", "instance_name", "schema_name", "table_id","valid_from_ts") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."column_frequency" ADD CONSTRAINT "colprof to colfreq" FOREIGN KEY ("datastore_id", "component_id", "instance_name", "schema_name", "table_id", "column_id", "profile_id","valid_from_ts") REFERENCES "kosh"."column_profile" ("datastore_id", "component_id", "instance_name", "schema_name", "table_id", "column_id", "profile_id","valid_from_ts") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."file_system_component" ADD CONSTRAINT "datacomp to filesyscomp" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."datastore_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."web_endpoint_component" ADD CONSTRAINT "Relationship5" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."datastore_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."web_endpoint_entity" ADD CONSTRAINT "Relationship6" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."web_endpoint_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."unstructured_component" ADD CONSTRAINT "Relationship9" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."datastore_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."unstructured_entity" ADD CONSTRAINT "Relationship10" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."unstructured_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."errormessages" ADD CONSTRAINT "Relationship32" FOREIGN KEY ("error_id") REFERENCES "kosh"."errors" ("error_id") ON DELETE SET NULL ON UPDATE CASCADE
;

ALTER TABLE "kosh"."bot_status" ADD CONSTRAINT "Relationship36" FOREIGN KEY ("uuid", "name") REFERENCES "kosh"."bot_registry" ("uuid", "name") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."data_processing_stats" ADD CONSTRAINT "Relationship37" FOREIGN KEY ("uuid", "name") REFERENCES "kosh"."bot_registry" ("uuid", "name") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."table_load_stats" ADD CONSTRAINT "Relationship38" FOREIGN KEY ("job_id") REFERENCES "kosh"."job_metadata" ("job_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."job_run_stats" ADD CONSTRAINT "Relationship39" FOREIGN KEY ("job_id") REFERENCES "kosh"."job_metadata" ("job_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."table_load_result" ADD CONSTRAINT "Relationship40" FOREIGN KEY ("job_id") REFERENCES "kosh"."job_metadata" ("job_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;



ALTER TABLE "kosh"."structured_jobtotable" ADD CONSTRAINT "Relationship44" FOREIGN KEY ("job_id") REFERENCES "kosh"."job_metadata" ("job_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."job_run_stats" ADD CONSTRAINT "Relationship47" FOREIGN KEY ("process_id", "dest_table_id","crt_ts") REFERENCES "kosh"."table_load_stats" ("process_id", "dest_table_id","crt_ts") ON DELETE NO ACTION ON UPDATE NO ACTION
;


ALTER TABLE "kosh"."table_scheduler" ADD CONSTRAINT "Relationship53" FOREIGN KEY ("datastore_id", "component_id", "instance_name", "schema_name", "table_id","valid_from_ts") REFERENCES "kosh"."table_entity" ("datastore_id", "component_id", "instance_name", "schema_name", "table_id","valid_from_ts") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."file_scheduler" ADD CONSTRAINT "Relationship54" FOREIGN KEY ("entity_id") REFERENCES "kosh"."file_linux_entity" ("entity_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."file_window_entity" ADD CONSTRAINT "Relationship58" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."file_system_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."file_linux_entity" ADD CONSTRAINT "Relationship59" FOREIGN KEY ("datastore_id", "component_id") REFERENCES "kosh"."file_system_component" ("datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."unstructured_load_stats" ADD CONSTRAINT "Relationship62" FOREIGN KEY ("datastore_id", "component_id", "entity_id") REFERENCES "kosh"."unstructured_entity" ("datastore_id", "component_id", "entity_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."filelinux_load_stats" ADD CONSTRAINT "Relationship63" FOREIGN KEY ("entity_id") REFERENCES "kosh"."file_linux_entity" ("entity_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "kosh"."filewindow_load_stats" ADD CONSTRAINT "Relationship64" FOREIGN KEY ("entity_id", "datastore_id", "component_id") REFERENCES "kosh"."file_window_entity" ("entity_id", "datastore_id", "component_id") ON DELETE NO ACTION ON UPDATE NO ACTION
;



-- Create Table kosh.error_table

Create  table "kosh"."error_table" (
    "process_id"                     INT8                          ,
    "bot_uuid"                       UUID                          ,
    "process_context"                TEXT                          ,
    "error_json"                     TEXT                          ,
    "created_ts"                     TIMESTAMP                     ,
    "task_map"                       TEXT                          ,
    "error_code"                     INT4                          ) 
;
COMMENT ON COLUMN "kosh"."error_table"."process_id" IS 'A unique id given to the process'
;
COMMENT ON COLUMN "kosh"."error_table"."bot_uuid" IS 'uuid given to the bot'
;
COMMENT ON COLUMN "kosh"."error_table"."process_context" IS 'task performed by bot'
;
COMMENT ON COLUMN "kosh"."error_table"."error_json" IS 'error occured in the format of json'
;
COMMENT ON COLUMN "kosh"."error_table"."created_ts" IS 'error created timestamp'
;
COMMENT ON COLUMN "kosh"."error_table"."task_map" IS 'In which task error has occurred'
;
COMMENT ON COLUMN "kosh"."error_table"."error_code" IS 'predefined error for particular error code'
;

-- Table kosh structured_notclassified

CREATE TABLE "kosh"."structured_notclassified"(
 "domain_area" Text,
 "source_name" Text NOT NULL,
 "schema_name" Text,
 "hostname" Text,
 "number_of_tables" Bigint,
 "size" Real,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Bigint
)
;

-- Table kosh unstructured_notclassified

CREATE TABLE "kosh"."unstructured_notclassified"(
 "size" Real,
 "crt_by" Text,
 "crt_ts" Timestamp,
 "mod_by" Text,
 "mod_ts" Timestamp,
 "source_name" Text NOT NULL,
 "domain_name" Text,
 "Count" Bigint
)
;

-- Table kosh web_endpoint_component

CREATE TABLE "kosh"."web_endpoint_component"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "URL" Text NOT NULL,
 "classification" Text NOT NULL,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

-- Add keys for table kosh web_endpoint_component

ALTER TABLE "kosh"."web_endpoint_component" ADD CONSTRAINT "Key18" PRIMARY KEY ("datastore_id","component_id")
;

-- Table kosh web_endpoint_entity

CREATE TABLE "kosh"."web_endpoint_entity"(
 "datastore_id"  Bigint NOT NULL,
 "component_id" Bigint NOT NULL,
 "entity_id" Bigint NOT NULL,
 "crawl_id" Bigint NOT NULL,
 "prev_crawl_id" Bigint,
 "entity_endpoint" Text NOT NULL,
 "is_stream" Boolean NOT NULL,
 "content_type" Text NOT NULL,
 "lineage_uuid" Text,
 "crt_by" Text NOT NULL,
 "crt_ts" Timestamp NOT NULL,
 "mod_by" Text,
 "mod_ts" Timestamp
)
;

-- Add keys for table kosh web_endpoint_entity

ALTER TABLE "kosh"."web_endpoint_entity" ADD CONSTRAINT "Key19" PRIMARY KEY ("datastore_id","component_id","entity_id","crawl_id")
;

STAGING TABLES

Create  table staging.column_metadata_from_source (
    datastore_id                   INT8                          ,
    component_id                   INT8                          ,
    instance_name                  TEXT                          ,
    schema_name                    TEXT                          ,
    table_owner                    TEXT                          ,
    table_name                     TEXT                          ,
    column_name                    TEXT                          ,
    data_type                      TEXT                          ,
    data_length                    INT8                          ,
    data_precision                 INT8                          ,
    data_scale                     INT8                          ,
    is_nullable                    BOOL                          ,
    ordinal_position               INT8                          ,
    num_distinct                   INT8                          ,
    low_value                      TEXT                          ,
    high_value                     TEXT                          ,
    num_nulls                      INT8                          ,
    avg_col_len                    INT8                          ) 
with(oids=false);


-- Create Table staging.index_column_from_source

Create  table staging.index_column_from_source (
    datastore_id                   INT8                          ,
    component_id                   INT8                          ,
    instance_name                  TEXT                          ,
    schema_name                    TEXT                          ,
    table_owner                    TEXT                          ,
    table_name                     TEXT                          ,
    column_name                    TEXT                          ,
    index_name                     TEXT                          ,
    ordinal_position               INT4                          ,
    sort_order                     TEXT                          ) 
with(oids=false);


-- Create Table staging.src_table_entity_from_source

Create  table staging.src_table_entity_from_source (
    datastore_id                   INT8                          ,
    component_id                   INT8                          ,
    instance_name                  TEXT                          ,
    schema_name                    TEXT                          ,
    hostname                       TEXT                          ,
    table_name                     TEXT                          ,
    table_owner                    TEXT                          ,
    status                         TEXT                          ,
    estimated_rows                 INT8                          ,
    num_columns                    INT8                          ,
    inserts                        INT8                          ,
    updates                        INT8                          ,
    deletes                        INT8                          ,
    create_table_ts                TIMESTAMP(26)               ,
    modified_table_ts              TIMESTAMP(26)               ,
    table_size                     FLOAT4                        ,
    table_layer                    TEXT                          ,
    location_path                  TEXT                          ,
    table_space_name                TEXT                          ,
    table_type                     TEXT                          ,
    table_format                   TEXT                          ,
    is_encrypted                   BOOL                          ,
    is_compressed                  BOOL                          ,
    table_type_owner               TEXT                          ,
    query                          TEXT                          ) 
with(oids=false);
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_id" IS 'A unique id given to a table '
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_name" IS 'name of the table '
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_owner" IS 'Who created the table in the source level'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."status" IS 'specifes valid or invalid'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."estimated_rows" IS 'Indicates the number of records in the table.'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."inserts" IS 'number of inserts performed on the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."updates" IS 'number of updates performed on the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."deletes" IS 'number of deletes performed on the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."create_table_ts" IS 'table created timestamp'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."modified_table_ts" IS 'table last modified timestamp'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_size" IS 'size of the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."num_columns" IS 'number of the columns in the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_layer" IS 'where table resides'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_space_name" IS 'Source name'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_format" IS 'format of the table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."is_encrypted" IS 'whether it should be encrypted or not '
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."is_compressed" IS 'whether it should be compresses or not'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_type" IS 'type of the table like view or table'
;
COMMENT ON COLUMN "staging"."src_table_entity_from_source"."table_type_owner" IS 'owner of the table'
;


-- Create Table staging_v3.table_privileges_from_source

Create  table staging.table_privileges_from_source (
    datastore_id                   INT8                          ,
    component_id                   INT8                          ,
    instance_name                  TEXT                          ,
    schema_name                    TEXT                          ,
    table_name                     TEXT                          ,
    grantee                        TEXT                          ,
    grantor                        TEXT                          ,
    privilege_type                 TEXT                          ,
    is_grantable                   BOOL                          ) 
with(oids=false);

COMMENT ON COLUMN "staging"."table_privileges_from_source"."datastore_id" IS 'see parent'
;
COMMENT ON COLUMN "staging"."table_privileges_from_source"."component_id" IS 'just a unique identifier for this component which allows it to exist in a relational world -lol'
;
COMMENT ON COLUMN "staging"."table_privileges_from_source"."instance_name" IS 'The name that specifies a particular database instance where the source component is located.'
;
COMMENT ON COLUMN "staging"."table_privileges_from_source"."schema_name" IS 'The schema which is related to relational component'
;
COMMENT ON COLUMN "staging"."table_privileges_from_source"."table_name" IS 'name of the table '
;
