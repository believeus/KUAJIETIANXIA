package cn.believeus.admin.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mydfs.storage.server.MydfsTrackerServer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UploadController {
	@Resource
	private MydfsTrackerServer mydfsTrackerServer;

	/**
	 * 文本框的图片上传
	 * @return
	 */
	@RequestMapping(value = "/UEupload", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	public  void UEpload(HttpServletRequest request,HttpServletResponse response) throws IOException {
		// 图片描述
		String pictitle = request.getParameter("pictitle");
		// 遍历有二进制文件的form表单
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		String storepath = "";
		Map<String, MultipartFile> files = multipartRequest.getFileMap();
		for (MultipartFile file : files.values()) {
			InputStream inputStream;
			try {
				inputStream = file.getInputStream();
				String originName=file.getOriginalFilename();
				String extention = originName.substring(originName.lastIndexOf(".") + 1);
				storepath = mydfsTrackerServer.upload(inputStream, extention);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		//
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("status", "SUCCESS");
		map.put("title", "图片");
		map.put("url", storepath);
		String json="{\"url\":\""+storepath+"\", \"title\":\""+pictitle+"\", \"state\":\"SUCCESS\" }";
		response.setContentType("text/html; charset=UTF-8");
		OutputStream out = response.getOutputStream();
		PrintWriter writer = new PrintWriter(out);
		writer.println(json.toString());
		writer.flush();
		writer.close();
		out.close();
	}
}
