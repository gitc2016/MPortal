package am.gitc.mportal.domain;

import javax.persistence.*;

@Entity
@Table(name = "friends")
public class Friend {
    @Id
    @GeneratedValue
    private int id;

    @Column(name = "user_id")
    private int userId;

    @Column(name = "friend_id")
    private int friendId;

    public Friend(int userId, int friendId) {
        this.userId = userId;
        this.friendId = friendId;
    }

    public Friend() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getFriendId() {
        return friendId;
    }

    public void setFriendId(int friendId) {
        this.friendId = friendId;
    }
}
