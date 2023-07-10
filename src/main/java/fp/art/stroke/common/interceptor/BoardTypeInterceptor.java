package fp.art.stroke.common.interceptor;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import fp.art.stroke.board.model.service.BoardService;
import fp.art.stroke.board.model.vo.BoardType;

public class BoardTypeInterceptor implements HandlerInterceptor{
	@Autowired
	private BoardService boardService;
	
	
	private Logger logger = LoggerFactory.getLogger(BoardTypeInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("전처리 수행");
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		logger.info("후처리 수행");
		//application scope에 "boardTypeList"가 없을 경우
		//이를 조회하는 Service 호출 후 결과를 세팅
		//application scope 객체 얻어오기..
		ServletContext application = request.getServletContext();
		if(application.getAttribute("boardTypeList") == null ) {
			List<BoardType> boardTypeList = boardService.selectBoardType();
			
			application.setAttribute("boardTypeList", boardTypeList);
		}
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("VIEW 처리 완료 후 수행");
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
