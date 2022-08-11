<#if isAutoImport?exists && isAutoImport==true>
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl extends ServiceImpl<${classInfo.className}Mapper, ${classInfo.className}Entity>implements I${classInfo.className}Service {


}
