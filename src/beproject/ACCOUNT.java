package beproject;

public class ACCOUNT {
	
	private char BUSI_NUM;
	private char FACTORY;
	private char TRADE_BANK;
	private char ACCOUNT_NUM;

	@Override
	public String toString() {
		return "ACCOUNT [BUSI_NUM=" + BUSI_NUM + ", FACTORY=" + FACTORY + ", TRADE_BANK=" + TRADE_BANK
				+ ", ACCOUNT_NUM=" + ACCOUNT_NUM + "]";
	}

	public char getBUSI_NUM() {
		return BUSI_NUM;
	}

	public void setBUSI_NUM(char bUSI_NUM) {
		BUSI_NUM = bUSI_NUM;
	}

	public char getFACTORY() {
		return FACTORY;
	}

	public void setFACTORY(char fACTORY) {
		FACTORY = fACTORY;
	}

	public char getTRADE_BANK() {
		return TRADE_BANK;
	}

	public void setTRADE_BANK(char tRADE_BANK) {
		TRADE_BANK = tRADE_BANK;
	}

	public char getACCOUNT_NUM() {
		return ACCOUNT_NUM;
	}

	public void setACCOUNT_NUM(char aCCOUNT_NUM) {
		ACCOUNT_NUM = aCCOUNT_NUM;
	}

	public ACCOUNT() {
		super();
		// TODO Auto-generated constructor stub
	}

}
