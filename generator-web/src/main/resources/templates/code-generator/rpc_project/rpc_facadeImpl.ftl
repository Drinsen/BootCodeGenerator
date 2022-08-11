<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Slf4j
@RequiredArgsConstructor
@DubboService(timeout = 50000)
public class ${classInfo.className}FacadeImpl implements ${classInfo.className}Facade {

	private final I${classInfo.className}Service ${classInfo.className?uncap_first}Service;

	@Override
	public Boolean insert(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO) {
        return ${classInfo.className?uncap_first}Service.xxxx;
	}


	@Override
	public Boolean delete(Long id) {
		return ${classInfo.className?uncap_first}Service.xxxx;
	}


	@Override
	public Object update(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO) {
		return ${classInfo.className?uncap_first}Service.xxxx;;
	}


	@Override
	public ${classInfo.className}VO load${classInfo.className}ById(Long id) {
		return ${classInfo.className?uncap_first}Service.xxxx;;
	}


	@Override
	public Cpage<${classInfo.className}VO> get${classInfo.className}PageList(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO) {
		return result;
	}

}
