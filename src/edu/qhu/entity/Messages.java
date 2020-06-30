package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/19 - 14:59
 */
public class Messages {
    private String sendName;
    private String context;
    private String sendTime;
    private int type;

    public Messages() {
    }

    public Messages(String sendName, String context, String sendTime) {
        this.sendName = sendName;
        this.context = context;
        this.sendTime = sendTime;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getSendName() {
        return sendName;
    }

    public void setSendName(String sendName) {
        this.sendName = sendName;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getSendTime() {
        return sendTime;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }
}
