package am.gitc.mportal.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Gtc-user17 on 11/14/2016.
 */
@Entity
public class Message {

    @Id
    @GeneratedValue
    private int id;

    private int fromID;

    private int toID;

    private String text;

    private boolean isRead;

    public Message() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isRead() {
        return isRead;
    }

    public void setRead(boolean read) {
        isRead = read;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Message message = (Message) o;

        if (id != message.id) return false;
        if (fromID != message.fromID) return false;
        if (toID != message.toID) return false;
        if (isRead != message.isRead) return false;
        return text != null ? text.equals(message.text) : message.text == null;

    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + fromID;
        result = 31 * result + toID;
        result = 31 * result + (text != null ? text.hashCode() : 0);
        result = 31 * result + (isRead ? 1 : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", fromID=" + fromID +
                ", toID=" + toID +
                ", text='" + text + '\'' +
                ", isRead=" + isRead +
                '}';
    }
}
