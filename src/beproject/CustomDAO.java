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
				return list;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public CUSTOM getCUSTOM(String BUSI_NUM) {
		
		String SQL = "SELECT C.BUSI_NUM,C.CUSTOM,C.SHORT,C.CEO,C.CHARGE_PERSON,C.BUSI_CONDITION,C.ITEM,C.POST_NUM,"+
				"C.ADDR1,C.ADDR2,C.TEL,C.FAX,C.HOMEPAGE,	C.CO_YN,C.FOREIGN_YN,C.TAX_YN,C.COUNTRY_ENG,"+
				"C.COUNTRY_KOR,C.SPECIAL_RELATION,C.TRADE_STOP,  C.CONTRACT_PERIOD_S, C.CONTRACT_PERIOD_E, C.REGI_INFO_MAN,"+
				"C.REGI_INFO_DATE, C.MODI_INFO_MAN, C.MODI_INFO_DATE "+
					"FROM CUSTOM C JOIN ACCOUNT A ON C.BUSI_NUM=A.BUSI_NUM WHERE C.BUSI_NUM=?";
				
		try {
			
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, BUSI_NUM);
				rs = pstmt.executeQuery();
				
				CUSTOM custom = new CUSTOM();
				
				if ( rs.next() ) {
					custom.setBUSI_NUM(rs.getString(1));
					custom.setCUSTOM(rs.getString(2));
					custom.setSHORT(rs.getString(3));
					custom.setCEO(rs.getString(4));
					custom.setCHARGE_PERSON(rs.getString(5));
					custom.setBUSI_CONDITION(rs.getString(6));
					custom.setITEM(rs.getString(7));
					custom.setPOST_NUM(rs.getString(8));
					custom.setADDR1(rs.getString(9));
					custom.setADDR2(rs.getString(10));
					custom.setTEL(rs.getString(11));
					custom.setFAX(rs.getString(12));
					custom.setHOMEPAGE(rs.getString(13));
					custom.setCO_YN(rs.getBoolean(14));
					custom.setFOREIGN_YN(rs.getBoolean(15));
					custom.setTAX_YN(rs.getBoolean(16));
					custom.setCOUNTRY_ENG(rs.getString(17));
					custom.setCOUNTRY_KOR(rs.getString(18));
					custom.setSPECIAL_RELATION(rs.getBoolean(19));
					custom.setTRADE_STOP(rs.getBoolean(20));
					custom.setCONTRACT_PERIOD_S(rs.getDate(21));
					custom.setCONTRACT_PERIOD_E(rs.getDate(22));
					custom.setREGI_INFO_MAN(rs.getString(23));
					custom.setREGI_INFO_DATE(rs.getDate(24));
					custom.setMODI_INFO_MAN(rs.getString(25));
					custom.setMODI_INFO_DATE(rs.getDate(26));
				}
				
				return custom;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	

}
