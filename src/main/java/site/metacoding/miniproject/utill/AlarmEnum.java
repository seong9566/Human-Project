package site.metacoding.miniproject.utill;

public enum AlarmEnum {
    ALARMAPPLYID("alarmApplyId"),
    ALARMINCRUITID("alarmIncruitId"),
    ALARMSUBSCRIBEID("alarmSubscribeId"),
    ALARMCOMPANYLIKEID("alarmCompanyLikeId"),
    ALARMPERSONALLIKEID("alarmPersonalLikeId");

    private final String key;

    AlarmEnum(String key) {
        this.key = key;
    }

    public String key() {
        return this.key;
    }
}
