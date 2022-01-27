package apple;

import java.util.List;

public interface BoardDAO {
	public List<BoardVO> findAll() throws Exception;
	public int add(BoardVO pvo) throws Exception;
	public String del2(BoardVO pvo) throws Exception;
}
