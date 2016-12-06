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
    @Column(name = "from_id")
    private int fromID;
    @Column(name = "to_id")
    private int toID;

    private int accepted;

    public Request() {

    }

    public Request(int fromID, int toID, int acceptedID) {
        this.fromID = fromID;
        this.toID = toID;
        this.accepted = acceptedID;
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

    public int getAccepted() {
        return accepted;
    }

    public void setAccepted(int accepted) {
        this.accepted = accepted;
    }

    @Override
    public String toString() {
        return "Request{" +
                "fromID=" + fromID +
                ", toID=" + toID +
                ", accepted=" + accepted +
                '}';
    }
}
