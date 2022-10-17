package site.metacoding.miniproject.service.personal;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.HashMap;
import java.util.Map;

import org.junit.jupiter.api.Test;

import site.metacoding.miniproject.domain.alarm.Alarm;

public class PersonalLikeServiceTest {

    @Test
    public void 좋아요_test() {

        HashMap<String, Integer> map = new HashMap<>();

        map.put("alarmPersonalLikeId", 1);

        Alarm alarm = new Alarm(1, map, "hellocompany");

        assertEquals(1, alarm.getAlarmPersonalLikeId());

    }
}
