package burst.core.model;

import com.alibaba.fastjson.JSONObject;

/**
 * 客户端请求数据的封装
 * @author RLJ
 *
 */
public class RequestData {
	//客户端请求的数据
	private  JSONObject data;

	public JSONObject getData() {
		return data;
	}

	public void setData(JSONObject data) {
		this.data = data;
	}
	
	public String toString() {
		return data.toJSONString();
	}
}
