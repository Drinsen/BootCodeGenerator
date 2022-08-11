<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.entity;</#if>

<#if isAutoImport?exists && isAutoImport==true>
<#if isLombok?exists && isLombok==true>import lombok.Data;</#if>
import java.util.Date;
import java.util.List;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
<#if isSwagger?exists && isSwagger==true>
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;</#if>
</#if>
/**
 * @description ${classInfo.classComment}VO对象(api层中用于返回给前端的对象封装)通常放在api-xxx项目中的vo包下
 * 请自行删除多于的字段和添加自己需要的其他字段，前端需要什么就返回什么。
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
<#if isLombok?exists && isLombok==true>@Data</#if><#if isSwagger?exists && isSwagger==true>
@ApiModel("${classInfo.classComment}")</#if>
@AllArgsConstructor
@NoArgsConstructor
public class ${classInfo.className}VO implements Serializable {

    private static final long serialVersionUID = 1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    <#if isComment?exists && isComment==true>/**
    * ${fieldItem.fieldComment}
    */</#if><#if isSwagger?exists && isSwagger==true>
    @ApiModelProperty("${fieldItem.fieldComment}")</#if><#if fieldItem.fieldClass == "LocalDateTime">
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")</#if>
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

<#if isLombok?exists && isLombok==false>
    public ${fieldItem.fieldClass} get${fieldItem.fieldName?cap_first}() {
        return ${fieldItem.fieldName};
    }

    public void set${fieldItem.fieldName?cap_first}(${fieldItem.fieldClass} ${fieldItem.fieldName}) {
        this.${fieldItem.fieldName} = ${fieldItem.fieldName};
    }
</#if>
</#list>
</#if>
}
