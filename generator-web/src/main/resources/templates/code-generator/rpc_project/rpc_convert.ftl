<#if isAutoImport?exists && isAutoImport==true>
</#if>
/**
* @description ${classInfo.classComment}
* @author ${authorName}
* @date ${.now?string('yyyy-MM-dd')}
*/
@Mapper
public interface ${classInfo.className}Convert {
    ${classInfo.className}Convert INSTANCE = Mappers.getMapper(${classInfo.className}Convert.class);

    /**
    * description: 将InvoiceTitleDTO对象转换为InvoiceTitleEntity
    * @Author: ${authorName}
    * @param ${classInfo.className?uncap_first}DTO:
    * ${classInfo.className}VO:
    * @date ${.now?string('yyyy-MM-dd')}
    */
    ${classInfo.className}Entity ${classInfo.className?uncap_first}DTO2${classInfo.className}Entity(${classInfo.className}DTO ${classInfo.className?uncap_first}DTO);

    /**
    * description: 将${classInfo.className}Entity对象转换为${classInfo.className}VO
    * @Author: ${authorName}
    * @param invoiceTitleEntity
    * @return ${classInfo.className}:
    * @date 2022/7/25 15:34
    */
    ${classInfo.className}VO ${classInfo.className?uncap_first}Entity2${classInfo.className}VO(${classInfo.className}Entity ${classInfo.className?uncap_first}Entity);


    /**
    * description: 将${classInfo.className}Entitylist转换为${classInfo.className}VOList
    * @Author: ${authorName}
    * @param ${classInfo.className?uncap_first}EntityList
    * @return List<${classInfo.className}VO>:
    * @date 2022/7/25 15:34
    */
    List<${classInfo.className}VO> ${classInfo.className}EntityListTo${classInfo.className}VOList(List<${classInfo.className}Entity> ${classInfo.className?uncap_first}EntityList);

    /**
    * description: 将${classInfo.className}DTOList转换为${classInfo.className}EntityList
    * @Author: ${authorName}
    * @param ${classInfo.className?uncap_first}DTOList:
    * @return List<${classInfo.className}Entity>:
    * @date 2022/7/25 15:34
    */
    List<${classInfo.className}Entity> ${classInfo.className}EntityListTo${classInfo.className}EntityList(List<${classInfo.className}DTO> ${classInfo.className?uncap_first}DTOList);

}