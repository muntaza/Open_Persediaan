DROP VIEW IF EXISTS view_log_user;
DROP VIEW IF EXISTS view_aksi;

CREATE VIEW view_aksi AS

select  1 as flag, 'Menambah' as aksi
UNION ALL
select  2 as flag, 'Merubah' as aksi
UNION ALL
select  3 as flag, 'Menghapus' as aksi;


CREATE VIEW view_log_user AS
 SELECT auth_user.username,
    django_admin_log.user_id,
    django_admin_log.action_time,
    django_content_type.model AS name,
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

GRANT ALL PRIVILEGES ON view_aksi, view_log_user, auth_user TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_aksi, view_log_user, auth_user FROM lap_kabupaten;
