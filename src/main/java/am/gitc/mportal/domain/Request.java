package am.gitc.mportal.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Gtc-user17 on 11/13/2016.
 */
@javax.persistence.Table(name = "request")
public class Request {

    @Id
    @GeneratedValue
    private int id;

    private int fromID;

    private int toID;

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
