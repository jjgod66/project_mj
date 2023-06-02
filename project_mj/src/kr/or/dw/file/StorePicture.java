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
		return true;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		int store_no = Integer.parseInt(req.getParameter("store_no"));
		StoreVO storeVo = new StoreVO();
		storeVo.setStore_no(store_no);
		
		IAdminService service = AdminServiceImpl.getInstance();
		
		// 일단 올려놓은거 다 지운다(db)
		service.deleteImgStore(store_no);
		
		
		// 이미지 추가한다
//		StoreVO storeVo = service.selectStoreView(store_no);
		String picFoldName = String.valueOf(storeVo.getStore_no());		// 점포번호(폴더이름)
		String realPath = "C:/file_project_mj/upload/storeImg/" + picFoldName;	// 실제폴더경로
		
		String fileName = "";	//파일 이름을 담을 곳
		
		File fileUploadDirectory = new File(realPath);	//  
		
		// 해당 디렉토리 안에 있는 모든 파일을 구한다.
		File[] alreadyFiles = fileUploadDirectory.listFiles();
		// 그 파일들의 이름을 구하고 새로운 파일 객체에 경로+파일 이름을 담아 delete한다. 
		for (int i = 0; i < alreadyFiles.length; i++) {
			fileName = alreadyFiles[i].getName();
			System.out.println(fileName);
			new File(realPath + "/" + fileName).delete();
		}
		
		if (!fileUploadDirectory.exists()) {
			fileUploadDirectory.mkdirs();
		}
		
		MultipartRequest multi = new MultipartRequest(req, realPath, 100*1024*1024, "utf-8");
		Enumeration en = multi.getFileNames();
//		System.out.println(en);
		int cnt = 0;
		ImgStoreVO imgStoreVo = new ImgStoreVO();
		imgStoreVo.setStore_no(store_no);
//		while (en.hasMoreElements()) {
//			System.out.println(en.nextElement());
//		}
		while (en.hasMoreElements()) {
			cnt++;
//			System.out.println("[ " + (String) en.nextElement() +" ]");
			fileName = multi.getFilesystemName((String) en.nextElement());
//			System.out.println(fileName);
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
