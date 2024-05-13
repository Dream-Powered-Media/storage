CREATE TABLE "media" (
  "media_id" uuid PRIMARY KEY,
  "media_name" varchar,
  "media_type" varchar,
  "media_link" varchar,
  "updated_at" timestamp,
  "deleted_at" timestamp,
  "author_id" uuid,
  "author_link" varchar
);

CREATE TABLE "media_links" (
  "media_link_id" uuid PRIMARY KEY,
  "media_link_name" varchar,
  "media_id" uuid,
  "directory_parent" uuid,
  "related_community" uuid,
  "grade" integer
);

CREATE TABLE "directories" (
  "directory_id" uuid PRIMARY KEY,
  "directory_parent" uuid,
  "related_community" uuid,
  "directory_name" varchar,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "communities" (
  "community_id" uuid PRIMARY KEY,
  "community_name" varchar,
  "community_description" text
);

CREATE TABLE "users" (
  "user_id" uuid PRIMARY KEY,
  "user_name" varchar,
  "user_bio" varchar,
  "is_author" varchar
);

CREATE TABLE "author_requests" (
  "author_request_id" uuid PRIMARY KEY,
  "user_id" uuid,
  "mail" varchar,
  "is_responded" bool
);

CREATE TABLE "role_requests" (
  "role_request_id" uuid PRIMARY KEY,
  "user_id" uuid,
  "role_id" uuid,
  "is_responded" bool
);

CREATE TABLE "actions" (
  "action_id" uuid PRIMARY KEY,
  "action_name" varchar
);

CREATE TABLE "roles" (
  "role_id" uuid PRIMARY KEY,
  "role_name" varchar
);

CREATE TABLE "user_community_relations" (
  "relation_id" uuid PRIMARY KEY,
  "user_id" uuid,
  "community_id" uuid,
  "role_id" uuid
);

CREATE TABLE "action_role_relations" (
  "relation_id" uuid PRIMARY KEY,
  "action_id" uuid,
  "role_id" uuid
);

ALTER TABLE "media_links" ADD FOREIGN KEY ("media_id") REFERENCES "media" ("media_id");

ALTER TABLE "directories" ADD FOREIGN KEY ("directory_parent") REFERENCES "directories" ("directory_id");

ALTER TABLE "media_links" ADD FOREIGN KEY ("directory_parent") REFERENCES "directories" ("directory_id");

ALTER TABLE "directories" ADD FOREIGN KEY ("related_community") REFERENCES "communities" ("community_id");

ALTER TABLE "media_links" ADD FOREIGN KEY ("related_community") REFERENCES "communities" ("community_id");

ALTER TABLE "user_community_relations" ADD FOREIGN KEY ("community_id") REFERENCES "communities" ("community_id");

ALTER TABLE "user_community_relations" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "media" ADD FOREIGN KEY ("author_id") REFERENCES "users" ("user_id");

ALTER TABLE "author_requests" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "role_requests" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "user_community_relations" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id");

ALTER TABLE "role_requests" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id");

ALTER TABLE "action_role_relations" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id");

ALTER TABLE "action_role_relations" ADD FOREIGN KEY ("action_id") REFERENCES "actions" ("action_id");
