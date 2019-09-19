package Bean;

public class Member_Bean {
    // 멤버조인의 변수이름과 맞춰줘야 자동정으로 맵핑, 안그럼 맵핑이 안됨
    private String id;
    private String pwd;
    private String email;
    private String tel;
    private String address;
    // 게터 세터 만들워줌 그래야 맵핑
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
