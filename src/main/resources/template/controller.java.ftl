package ${package.Controller};


import org.springframework.web.bind.annotation.RequestMapping;

<#if restControllerStyle>
import org.springframework.web.bind.annotation.RestController;
<#else>
import org.springframework.stereotype.Controller;
</#if>
<#if superControllerClassPackage??>
import ${superControllerClassPackage};
</#if>
import ${package.Service}.${table.serviceName};
import org.springframework.beans.factory.annotation.Autowired;
import burst.core.model.RequestData;
import java.util.List;
import ${package.Entity}.${entity};


/**
 * <p>
 * ${table.comment} 前端控制层
 * </p>
 *
 * @author ${author}
 * @since ${date}
 */
<#if restControllerStyle>
@RestController
<#else>
@Controller
</#if>
@RequestMapping("<#if package.ModuleName??>/${package.ModuleName}</#if>/<#if controllerMappingHyphenStyle??>${controllerMappingHyphen}<#else>${table.entityPath}</#if>")
<#if kotlin>
class ${table.controllerName}<#if superControllerClass??> : ${superControllerClass}()</#if>
<#else>
<#if superControllerClass??>
public class ${table.controllerName} extends ${superControllerClass} {
<#else>
public class ${table.controllerName} {
	
	@Autowired
	private ${table.serviceName} ${table.serviceName?keep_after("I")?uncap_first};

	//添加
	@RequestMapping(value="/add")
	public void add(RequestData requestData) {};
	/**
	  删除
	 @作者： ${author}
	 @时间： ${date}
	 */
	@RequestMapping(value="/delete")
	public void delete(RequestData requestData) {};
	//更新
	@RequestMapping(value="/update")
	public void update(RequestData requestData) {};
	//查询
	@RequestMapping(value="/list")
	public List<${entity}> list(RequestData requestData) {
		return null;
	};
}
</#if>
</#if>
