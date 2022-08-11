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
 * @description ${classInfo.classComment}数据传输对象(rpc服务中用于接收api层的参数)，通常放在rpc-xxx项目中的DTO中，
 * 请根据自己的需求把多于的字段删除，自行添加自己需要的新字段
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
<#if isLombok?exists && isLombok==true>@Data</#if><#if isSwagger?exists && isSwagger==true>
@ApiModel("${classInfo.classComment}")</#if>
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class ${classInfo.className}DTO {
<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    <#if isComment?exists && isComment==true>/**
    * ${fieldItem.fieldComment}
    */</#if><#if isSwagger?exists && isSwagger==true>
    @ApiModelProperty("${fieldItem.fieldComment}")</#if>
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
