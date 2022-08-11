<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Slf4j
@RestController
@Api(tags = "${classInfo.classComment}模块")
@RequestMapping(value = "/${classInfo.className?uncap_first}")
public class ${classInfo.className}Controller {

    private final ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PostMapping("/insert")
    public R<Boolean> insert(@RequestBody${classInfo.className} ${classInfo.className?uncap_first}){
    return R.ok();
    }

    /**
    * 刪除
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/delete")
    public R<Boolean> delete(@RequestParam(value = "id")Long id){
        return R.ok();
    }

    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PostMapping("/update")
    public R<Boolean> update(@RequestBody${classInfo.className} ${classInfo.className?uncap_first}){
            return R.ok();
    }

    /**
    * 查询 根据主键 id 查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/load")
    public ${classInfo.className} load(@RequestParam(value = "id")Long id){
            return R.ok();
    }

    /**
    * 查询 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PostMapping("/pageList")
    public R<CPage<${classInfo.className}>> pageList(@RequestBody ${classInfo.className}PageDTO ${classInfo.className?uncap_first}DTO) {
        return R.ok();
    }

}
