package Model;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//Data Access Object ... 선택 삽입 업데이트 삭제를 해주는 클래스
public class MemberDAO {

    //오라클에 접속하는 소스..
    /*String id ="system";
    String pwd = "oracle";
    String url = "jdbc:oracle:thin:@localhost:1521:XE";*/ //접속 url

    Connection con; // 데이터베이스에 접근할수 있도록 설정
    PreparedStatement pstmt ; //데이터베이스에서 쿼리를 실행시켜주는 객체
    ResultSet rs; // 데이터 베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체

   //데이터 베이스에 접근할수 있도록 도와주는 메소드


    public void getCon() {
        try{
            //해당 데이터베이스를 사용한다고 선언
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            //해당 데이터베이스에 접속
            //con = DriverManager.getConnection(url, id, pwd);

            Context initctx = new InitialContext();
            Context envctx = (Context) initctx.lookup("java:comp/env");
            DataSource ds = (DataSource) envctx.lookup("conpool");

            con = ds.getConnection();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void insertMember(MemberBean mbean){
        getCon();
        try {

            //접속후 쿼리준비
            String sql = "insert into MEMBER values(?,?,?,?,?,?,?,?)";
            //쿼리를 사용하도록 설
            pstmt = con.prepareStatement(sql); //jsp에서 쿼리를 사용
            // 인덱스에 맞게 데이터 맵핑
            pstmt.setString(1,mbean.getId());
            pstmt.setString(2,mbean.getPwd());
            pstmt.setString(3,mbean.getEmail());
            pstmt.setString(4,mbean.getTel());
            pstmt.setString(5,mbean.getInterests());
            pstmt.setString(6,mbean.getJob());
            pstmt.setString(7,mbean.getAge());
            pstmt.setString(8,mbean.getComments());
            //오라클에서 쿼리 실행
            pstmt.executeUpdate();
            con.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public Vector<MemberBean> allSelectMember(){
        //가변길이로 데이터를 저장
        Vector<MemberBean> v = new Vector<>();
        getCon();
        try {

            getCon();
            //쿼리 준비
            String sql = "select * from member";
            // 쿼리 실행 객체 생썽
            pstmt = con.prepareStatement(sql);
            //쿼리 실행 결과를 리턴해서 받아줌
            rs = pstmt.executeQuery();

            //반복문을 사용해 데이터 추출
            while(rs.next()){
                MemberBean bean = new MemberBean();
                bean.setId(rs.getString(1));
                bean.setPwd(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setTel(rs.getString(4));
                bean.setInterests(rs.getString(5));
                bean.setJob(rs.getString(6));
                bean.setAge(rs.getString(7));
                bean.setComments(rs.getString(8));

                v.add(bean);

            }

            con.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return v;
    }
    public MemberBean oneSelectMember(String id){
        MemberBean bean = new MemberBean() ;

        try{
            getCon();
            String sql = "select * from member where id=?";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1,id);

            rs = pstmt.executeQuery();
            if (rs.next()){
                bean.setId(rs.getString(1));
                bean.setPwd(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setTel(rs.getString(4));
                bean.setInterests(rs.getString(5));
                bean.setJob(rs.getString(6));
                bean.setAge(rs.getString(7));
                bean.setComments(rs.getString(8));
            }
            con.close();

        }catch (Exception e){
            e.printStackTrace();
        }


        return bean;
    }

    //한 회원의 패스워드를 출력
    public String getPass(String id){
        String pass = "";
        getCon();
        try {
            getCon();

            String sql = "select pwd from member where id=?";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, id);

            rs = pstmt.executeQuery();

            if(rs.next()){
                pass = rs.getString(1);
            }
            con.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }
        return pass;
    }
    public void updateMember(MemberBean mbean){
        getCon();
        try{


            String sql = "update member set email=?, tel=?, comments=? where id=?";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, mbean.getEmail());
            pstmt.setString(2, mbean.getTel());
            pstmt.setString(3, mbean.getComments());
            pstmt.setString(4, mbean.getId());

            pstmt.executeUpdate();

            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
    public void deleteMember(String id){
        getCon();
        try{


            String sql = "delete from MEMBER where ID=?";

            pstmt = con.prepareStatement(sql);

            pstmt.setString(1,id);

            pstmt.executeUpdate();

            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
