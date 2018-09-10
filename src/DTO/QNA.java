package DTO;

public class QNA {

    private int index;

    private String username;

    private String password;

    private String title;

    private String content;

    private String date;

    private String reply;

    private String access;

    public int getIndex() { return index; }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) { this.username = username; }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTitle() { return title; }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getReply() { return reply; }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getAccess() { return access; }

    public void setAccess(String access) { this.access = access; }
}
