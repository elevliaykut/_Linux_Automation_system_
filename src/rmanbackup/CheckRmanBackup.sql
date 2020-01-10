SET ECHO OFF
SET MARKUP HTML ON SPOOL ON



SET PAGES 2000 LINES 200
col "Start Date" FOR a20
col "End Date" FOR a20
col "Time Minute" for a11
col status for a15
col input_bytes_display  for a10
col output_bytes_display for a10
  SELECT TO_CHAR (d.start_time, 'YYYY.MM.DD HH24:MI:SS') "Start Date",
         TO_CHAR (d.end_time, 'YYYY.MM.DD HH24:MI:SS') "End Date",
         TO_CHAR (ROUND ( (d.end_time - d.start_time) * 24 * 60)) || ' dk' "Time Minute",
         d.status,d.input_type,d.input_bytes_display,d.output_bytes_display,d.OUTPUT_DEVICE_TYPE
    FROM V$RMAN_BACKUP_JOB_DETAILS d, V$RMAN_BACKUP_type t
   WHERE (d.start_time BETWEEN (SYSDATE -365) AND (SYSDATE))
    and d.INPUT_TYPE = t.INPUT_TYPE
ORDER BY start_time desc;

SET MARKUP HTML OFF
SET ECHO ON
EXIT