package beproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import setting.Setting;

public class CUSTOMDAO {

	private Connection conn;
	private ResultSet rs;

	public CUSTOMDAO() {

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(Setting.getDbURL(), Setting.getDbID(), Setting.getDbPassword());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
