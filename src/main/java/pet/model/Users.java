package pet.model;

public class Users {
    private String uid;

    private String uname;

    private Integer usex;
    private String upasswold;

    public String getUpasswold() {
        return upasswold;
    }

    public void setUpasswold(String upasswold) {
        this.upasswold = upasswold;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public Integer getUsex() {
        return usex;
    }

    public void setUsex(Integer usex) {
        this.usex = usex;
    }
}