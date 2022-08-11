<#if isAutoImport?exists && isAutoImport==true>
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Facade {

    /**
    * description:
    * @Author: ${authorName}
    * @param: ${classInfo.className?uncap_first}
    * @return Boolean:
    * @date ${.now?string('yyyy-MM-dd')}
    */
    public Boolean save${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * description:
    * @Author: ${authorName}
    * @param: id:
    * @return Boolean
    * @date ${.now?string('yyyy-MM-dd')}
    */
    public Boolean delete${classInfo.className}ById(Long id);

    /**
    * description:
    * @Author: ${authorName}
    * @param: ${classInfo.className?uncap_first}DTO
    * @return Boolean:
    * @date ${.now?string('yyyy-MM-dd')}
    */
    public Boolean update${classInfo.className}ById(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO);

    /**
    * description:
    * @Author: ${authorName}
    * @param: id:
    * @return ${classInfo.className}VO
    * @date ${.now?string('yyyy-MM-dd')}
    */
    public ${classInfo.className}VO load${classInfo.className}ById(Long id);

    /**
    * description:
    * @Author: ${authorName}
    * @param: Cpage<${classInfo.className}VO>:
    * @return ${classInfo.className?uncap_first}DTO
    * @date ${.now?string('yyyy-MM-dd')}
    */
    public Cpage<${classInfo.className}VO> get${classInfo.className}PageList(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO);

}