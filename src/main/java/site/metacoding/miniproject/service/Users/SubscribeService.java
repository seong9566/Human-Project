package site.metacoding.miniproject.service.Users;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.config.handler.exception.ApiException;
import site.metacoding.miniproject.domain.alarm.Alarm;
import site.metacoding.miniproject.domain.alarm.AlarmDao;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.subscribe.Subscribe;
import site.metacoding.miniproject.domain.subscribe.SubscribeDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.utill.AlarmEnum;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Service
@RequiredArgsConstructor
public class SubscribeService {

    private final SubscribeDao subscribeDao;
    private final AlarmDao alarmDao;
    private final UsersDao usersDao;

    @Transactional(rollbackFor = RuntimeException.class)
    public void subscribeToCompany(SignedDto<?> signedDto, Integer companyId) {

        HashMap<String, Integer> subscribes = new HashMap<>();
        Personal personalinfo = (Personal) signedDto.getUserinfo();

        Subscribe subscribe = new Subscribe(signedDto.getPersonalId(), companyId);
        subscribeDao.insert(subscribe);

        Users users = usersDao.findByCompanyId(companyId);
        subscribes.put(AlarmEnum.ALARMSUBSCRIBEID.key(), subscribe.getSubscribeId());

        Alarm alarm = new Alarm(users.getUsersId(), subscribes, personalinfo.getPersonalName());
        alarmDao.insert(alarm);

        subscribe.setAlarmId(alarm.getAlarmId());
        subscribeDao.update(subscribe);
    }
}
