package backend.dao;

import backend.model.Account;
import libs.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    // Kiểm tra tài khoản có tồn tại trong database hay không
    public static Account checkLogin(String username, String password) {
        Account account;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql;
        try {
            // Duyệt all bảng để kiếm
            sql = "select * from account where username=? and pass=?";
            pst = ConnectionDB.getConnection().prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            while (rs.next()) {
                // Gắn giá trị từ database vào account để đưa lên màn hình trang web
                account = new Account();
                account.setUsername(rs.getString("username"));
                account.setPass(rs.getString("pass"));
                account.setAdmin(rs.getInt("admin"));
                return account;
            }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }

    }
}
