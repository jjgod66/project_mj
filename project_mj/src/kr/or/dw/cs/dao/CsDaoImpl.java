package kr.or.dw.cs.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.dw.cs.vo.AnnouncementVO;
import kr.or.dw.util.BuildSqlMapClient;

public class CsDaoImpl implements ICsDao {
	private static CsDaoImpl dao;
	private SqlMapClient client;
	
	private CsDaoImpl() {
		client = BuildSqlMapClient.getSqlMapClient();
	}
	
	public static CsDaoImpl getInstance() {
		if (dao == null) dao = new CsDaoImpl();
		return dao;
	}



	@Override
	public int insertContent(AnnouncementVO anVo) {
		int bd_no = 0;		
				try {
					bd_no= (int) client.insert("user.insertContent",anVo);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		return bd_no;
	}

	@Override
	public AnnouncementVO selectAnView(int bd_no) {
		AnnouncementVO anVo = null;
			try {
				anVo = (AnnouncementVO) client.queryForObject("user.selectAnView", bd_no);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return anVo;
	}

	@Override
	public void deleteAn(int bd_no) {
	
			try {
				client.update("user.deleteAn", bd_no);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

	@Override
	public int updateAn(AnnouncementVO anVo) {
		int result = 0;
		
		 try {
			result = client.update("user.updateAn", anVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}


	

}
