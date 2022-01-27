package apple;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class BoardDAO_Spring implements BoardDAO{
	
	private JdbcTemplate jdbcTemplate = null;
	public JdbcTemplate getJdbcTemplate() { return jdbcTemplate; }
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }

	
	@Override
	public List<BoardVO> findAll() throws Exception {
		RowMapper<BoardVO> rowMapper = new RowMapper<BoardVO>() {

			@Override
			public BoardVO mapRow(ResultSet rs, int count) throws SQLException {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getInt("no"));
				vo.setContent(rs.getString("content"));
				vo.setPostdate(rs.getString("postdate"));
				return vo;
			}
		};
		List<BoardVO> ls = jdbcTemplate.query("SELECT * FROM project_T ORDER BY no DESC", rowMapper);
		
		return ls;
	}

	
	
	
	
	@Override
	public int add(BoardVO pvo) throws Exception {
		int uc = 0;
		Connection conn = null;
		Statement stmt = null;
		try {
			
			if( pvo.getContent() != "" ) {
				Class.forName("org.mariadb.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mariadb://183.111.242.21:3306/pukyung20","pukyung20","pukyung00!!1");
				stmt = conn.createStatement();
				String sql = "INSERT INTO project_T VALUES ( default, '"+ pvo.getContent() + "', NOW())";
				uc = stmt.executeUpdate(sql);
			}
		}
		catch(Exception e) { throw e; }
		finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		return uc;
	}
	
	
	
	
	@Override
	public String del2(BoardVO pvo) throws Exception {
		
		return null;
	}
	
}
