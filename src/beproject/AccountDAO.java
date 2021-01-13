package beproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import setting.Setting;

public class AccountDAO {

	private Connection conn;
	private ResultSet rs;

	public AccountDAO() {
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(Setting.getDbURL(), Setting.getDbID(), Setting.getDbPassword());

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
public ACCOUNT getAccount(String BUSI_NUM) {
		
		String SQL = "SELECT A.BUSI_NUM,A.FACTORY,A.TRADE_BANK,A.ACCOUNT_NUM FROM "
				+ "CUSTOM C JOIN ACCOUNT A ON C.BUSI_NUM=A.BUSI_NUM  WHERE A.BUSI_NUM=?";
				
		try {
			
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, BUSI_NUM);
				rs = pstmt.executeQuery();
				
				ACCOUNT account = new ACCOUNT();
				
				if ( rs.next() ) {
					account.setBUSI_NUM(rs.getString(1));
					account.setFACTORY(rs.getString(2));
					account.setTRADE_BANK(rs.getString(3));
					account.setACCOUNT_NUM(rs.getString(4));
				}
				
				return account;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}




}
