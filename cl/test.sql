SELECT ps.PILOTS_ID,
          ps.NAME,
          ps.EMP_NUM,
          ps.LICENSE_ID,
          ps.ICAOLEVEL,
          ps.ICAOSTARTDATE,
          ps.NATIONALITY,
          ps.CITYID,
          ps.ID_CARDNO,
          ps.EN_NAME,
          ps.MENTAL_STRESS,
          ps.BIRTHDAY,
          ps.EMERGENCY_STARTDATE,
          ps.LAST_BREAK_TIME,
          ps.PILOT_HEALTH,
          ps.TECHNICAL_GRADE,
		  fp.FLT_ID, fp.PILOT_ID, fp.CREATE_TIME,
		  f.ID, f.FLT_NO,
          f.IS_INTERNATIONAL,f.START_AIRPORT,
          f.END_AIRPORT,f.START_TIME,
          f.REAL_START_TIME,f.DEPARTURE_TIME,
          f.REAL_END_TIME,f.END_TIME,
          f.ARRIVAL_TIME,f.DISPATCH_DATE,
          f.IS_APPROVE,f.IS_BAK,
          f.OPEN_DOOR_DATE,f.CLOSE_DOOR_DATE,
          f.CREATE_TIME,f.IS_CHANGE
     FROM PILOTS ps 
     INNER JOIN FLIGHT_PILOT fp  ON ps.PILOTS_ID=fp.PILOT_ID 
     INNER JOIN FLIGHT f ON p.ID=fp.FLT_ID

 