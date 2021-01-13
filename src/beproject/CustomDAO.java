package beproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import setting.Setting;

public class CustomDAO {

	private Connection conn;
	private ResultSet rs;

	public CustomDAO() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(Setting.getDbURL(), Setting.getDbID(), Setting.getDbPassword());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	public ArrayList<CUSTOM> getList(String BUSI_NUM,String CUSTOM) {
		
		
		
		String SQL = "SELECT BUSI_NUM,CUSTOM FROM CUSTOM WHERE BUSI_NUM LIKE ? OR CUSTOM LIKE ? ";
				
		try {
			
			System.out.println( "num : "+BUSI_NUM );
			System.out.println( "custom : "+CUSTOM );
			
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, BUSI_NUM+"%");
				pstmt.setString(2, CUSTOM+"%");
				rs = pstmt.executeQuery();

				ArrayList<CUSTOM> list = new ArrayList<CUSTOM>();
				
				
				
				while ( rs.next() ) {
					CUSTOM custom = new CUSTOM();
					custom.setBUSI_NUM(rs.getString(1));
					custom.setCUSTOM(rs.getString(2));
					list.add(custom);
					
				}
				System.out.println( list.toString() );
				return list;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}

}
