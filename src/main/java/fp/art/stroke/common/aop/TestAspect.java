package fp.art.stroke.common.aop;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component //런타임시에 필요한 위치에 코드를 알아서 참여시킬 수 있도록 빈 등록
@Aspect // 공통 관심사(특정 흐름 사이에 끼어서 수행할 코드)가 작성된 클래스임을 명시
		// -> 해당 어노테이션이 작성된 클래스에는 
		// advice(끼어들어서 수행할 메서드), 
		// pointcut(advice가 끼어들어서 수행될 부분) 이 작성되어 있어야 한다
public class TestAspect {

	private Logger logger = LoggerFactory.getLogger(TestAspect.class);
	
	// ** Pointcut 작성 방법 **
	
		// @Pointcut("execution([접근제한자] 반환형 패키지+클래스명.메서드명([매개변수]))")
		
		// * : 모든 | 아무 값
		// .. : 하위 | 아래  (하위 패키지)  | 0개 이상의 매개변수
	
	
	//edu.kh.comm.member패키지 아래에 Imple로 끝나는 클래스의 모든 메서드(매개변수 상관 없음)
	
	
	// @Before : Pointcut에 지정된 메서드가 수행되기 전 advice 수행을 명시하는 어노테이션
	//@Before("memberPointcut()")
	@Before("CommonPointcut.implPointcut()")
	public void start() { // 서비스 코드전 수행 전에 수행되는 메서드(advice)
		
		logger.info("------------------------------Service Start----------------------------");
	}
	
	
	// @After : Pointcut에 지정된 메서드가 수행된 후 advice 수행을 명시하는 어노테이션
	//@After("memberPointcut()")
	@After("CommonPointcut.implPointcut()")
	public void end() { // 서비스 코드전 수행 후에 수행되는 메서드(advice)
		
		logger.info("------------------------------Service End----------------------------");
	}
	
	//Pointcut을 작성해놓은 메서드
	// -> Pointcut의 패턴이 작성된 부분에 memberPointcut메서드 이름을 작성하면
	//@Pointcut에 작성된 패턴이 적용된다.
	@Pointcut("execution(* fp.art.stroke.member..*Impl.*(..))")
	public void memberPointcut() {} // 내용작성 X

 

}
