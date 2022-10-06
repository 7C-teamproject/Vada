package vada.dao.impl;

import java.sql.PreparedStatement;

import vada.constants.VADAConstants;
import vada.dao.SoldOutDAO;

public class SoldOutDAOImpl extends BoardDAOImpl implements SoldOutDAO{

	@Override
	public int soldOut(String reserveid, int productnum) throws Exception {
		
		PreparedStatement pstmt = getConnection().prepareStatement(VADAConstants.props.getProperty("SOLDOUT_SQL"));

		pstmt.setString(1, reserveid);
		pstmt.setInt(2, productnum);

		int result = pstmt.executeUpdate();
		
		closeConnection(pstmt, getConnection());
		return result;
		
	}
}
