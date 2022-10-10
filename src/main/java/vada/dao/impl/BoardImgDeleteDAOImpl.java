package vada.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import vada.constants.VADAConstants;

public class BoardImgDeleteDAOImpl extends AbstractBoardImgDAO {
	
	@Override
	public int deleteBoardImg(int imgproductnum) throws Exception {		// 이미지번호에 해당하는 이미지를 Delete 하기 위한 파라미터
		
		Connection conn = getConnection();
		
		// delete from img where imgproductnum=? 
		PreparedStatement pstmt = conn.prepareStatement(VADAConstants.props.getProperty("DELETE_IMG_SQL"));
		
		pstmt.setInt(1, imgproductnum);
		
		int result = pstmt.executeUpdate();
		
		closeConnection(pstmt, conn);
		
		return result;
		
	} // deleteBoardFile

} // class
