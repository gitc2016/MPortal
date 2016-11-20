package am.gitc.mportal.domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
public class Request {

    @Id
    @GeneratedValue
    @Column
    private int fromID;
    @Id
    @GeneratedValue
    @Column
    private int toID;
    @Id
    @GeneratedValue
    @Column
    private int acceptedID;

    public Request() {

    }

    public Request(int fromID, int toID, int acceptedID) {
        this.fromID = fromID;
        this.toID = toID;
        this.acceptedID = acceptedID;
    }

    public int getFromID() {
        return fromID;
    }

    public void setFromID(int fromID) {
        this.fromID = fromID;
    }

    public int getToID() {
        return toID;
    }

    public void setToID(int toID) {
        this.toID = toID;
    }

    public int getAcceptedID() {
        return acceptedID;
    }

    public void setAcceptedID(int acceptedID) {
        this.acceptedID = acceptedID;
    }

    @Override
    public String toString() {
        return "Request{" +
                "fromID=" + fromID +
                ", toID=" + toID +
                ", acceptedID=" + acceptedID +
                '}';
    }
}
