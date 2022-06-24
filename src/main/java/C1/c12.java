package C1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class c12 {
    static String url = "jdbc:mysql://cn-zz-bgp-2.natfrp.cloud:21506/wangheng";
    static String user = "root";
    static String pwd = "heng.1009";

    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        try {
            //1.注册驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pwd);
            //3.获取数据库操作对象
            stmt = conn.createStatement();
            // 执行查询
            System.out.println(" 实例化Statement对象...");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * from student";
            ResultSet rs = stmt.executeQuery(sql);

            // 展开结果集数据库
            while (rs.next()) {
                // 通过字段检索
                String Sno = rs.getString("Sname");
                String Cno = rs.getString("Sid");
                String GRADE = rs.getString("Sage");
                String GRA = rs.getString("Skey");

                // 输出数据
                System.out.print("学号: " + Sno);
                System.out.print(", 课程号: " + Cno);
                System.out.print(", 成绩: " + GRADE);
                System.out.print(", 成绩: " + GRA);
                System.out.print("\n");


            }
            // 完成后关闭
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            // 处理 JDBC 错误
            se.printStackTrace();
        } catch (Exception e) {
            // 处理 Class.forName 错误
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {
            }// 什么都不做
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
        System.out.println("Goodbye!");
    }
}
