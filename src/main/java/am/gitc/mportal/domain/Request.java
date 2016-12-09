package am.gitc.mportal.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
@Entity
@Table(name = "request")
public class Request {

    @Id
    @GeneratedValue
    private int id;
    @Column(name = "sender_id")
    private int senderID;
    @Column(name = "acceptr_id")
    private int acceptrID;

    private int accepted;

    public Request() {

    }

    public Request(int senderID, int acceptrID, int accepted) {
        this.senderID = senderID;
        this.acceptrID = acceptrID;
        this.accepted = accepted;
    }

    public int getSenderID() {
        return senderID;
    }

    public void setSenderID(int senderID) {
        this.senderID = senderID;
    }

    public int getAcceptrID() {
        return acceptrID;
    }

    public void setAcceptrID(int acceptrID) {
        this.acceptrID = acceptrID;
    }

    public int getAccepted() {
        return accepted;
    }

    public void setAccepted(int accepted) {
        this.accepted = accepted;
    }

    @Override
    public String toString() {
        return "Request{" +
                "senderID=" + senderID +
                ", acceptrID=" + acceptrID +
                ", accepted=" + accepted +
                '}';
    }
}
