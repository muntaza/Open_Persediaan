drop view if exists view_log_user;

CREATE VIEW view_log_user AS
 SELECT auth_user.username,
    django_admin_log.user_id,
    django_admin_log.action_time,
    django_content_type.model as name,
    django_admin_log.object_repr,
    django_admin_log.object_id,
    django_admin_log.action_flag,
    django_admin_log.change_message,
    view_aksi.aksi
   FROM auth_user,
    django_admin_log,
    django_content_type,
    view_aksi
  WHERE ((1 = 1) AND 
  (django_admin_log.action_flag = view_aksi.flag) AND 
  (django_admin_log.user_id = auth_user.id) AND 
  (django_admin_log.content_type_id = django_content_type.id));

GRANT ALL PRIVILEGES ON view_log_user TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_log_user FROM lap_kabupaten;

