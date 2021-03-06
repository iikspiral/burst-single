package burst.modular.system.controller;


import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;
import burst.modular.system.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import burst.core.model.RequestData;
import burst.core.model.ResponseData;

import java.util.List;
import burst.modular.system.entity.Permission;


/**
 * <p>
 * 权限表 前端控制层
 * </p>
 *
 * @author renlinjun
 * @since 2018-05-21
 */
@RestController
@RequestMapping("/system/permission")
public class PermissionController {
	
	@Autowired
	private IPermissionService permissionService;

	/**
	 * 添加权限
	 * @param requestData
	 * @return
	 */
	@RequestMapping(value="/add")
	public ResponseData add(@RequestBody RequestData requestData) {
		return permissionService.add(requestData);
	}
	//删除
	@RequestMapping(value="/delete")
	public void delete(RequestData requestData) {}
	//更新
	@RequestMapping(value="/update")
	public void update(RequestData requestData) {}
	//查询
	@RequestMapping(value="/list")
	public List<Permission> list(RequestData requestData) {
		return null;
	}
}
