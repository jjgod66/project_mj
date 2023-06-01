package kr.or.dw.file;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import kr.or.dw.admin.service.AdminServiceImpl;
import kr.or.dw.admin.service.IAdminService;
import kr.or.dw.store.vo.ImgStoreVO;
import kr.or.dw.store.vo.StoreVO;
import kr.or.dw.web.IAction;

public class StorePicture implements IAction{

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		int store_no = Integer.parseInt(req.getParameter("store_no"));
		StoreVO storeVo = new StoreVO();
		storeVo.setStore_no(store_no);
		
		IAdminService service = AdminServiceImpl.getInstance();
		
		// 일단 올려놓은거 다 지운다
		service.deleteImgStore(store_no);
		
		// 이미지 추가한다
//		StoreVO storeVo = service.selectStoreView(store_no);
		String picFoldName = String.valueOf(storeVo.getStore_no());
		String realPath = "C:/file_project_mj/upload/storeImg/" + picFoldName;
		
		String fileName = "";
		
		File fileUploadDirectory = new File(realPath);
		if (!fileUploadDirectory.exists()) {
			fileUploadDirectory.mkdirs();
		}
		
		MultipartRequest multi = new MultipartRequest(req, realPath, 100*1024*1024, "utf-8");
		Enumeration en = multi.getFileNames();
		System.out.println(en);
		int cnt = 0;
		ImgStoreVO imgStoreVo = new ImgStoreVO();
		imgStoreVo.setStore_no(store_no);
		while (en.hasMoreElements()) {
			cnt++;
			System.out.println("[ " + (String) en.nextElement() +" ]");
			fileName = multi.getFilesystemName("imgUp" + cnt);
			System.out.println(fileName);
			imgStoreVo.setImg_url(picFoldName + "/" + fileName);
			service.insertImgStore(imgStoreVo);
		}
		
		
//		File oldFile = new File(realPath + "/" + fileName);
//		File newFile = new File(realPath + "/" + fileName);
//		oldFile.renameTo(newFile);
		
//		req.setAttribute("storeVo", storeVo);
		return null;
	}

}
