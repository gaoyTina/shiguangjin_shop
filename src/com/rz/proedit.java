package com.rz;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class proedit
 */
@WebServlet("/proedit")
public class proedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public proedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id=request.getParameter("id"); 
		 DBHelper Dal=new DBHelper();
		 String strSql=" select * from tbproduct where id=? "; 
		 Map<String, Object> objbyid = null;
		 List<Object> params = new ArrayList<Object>();
		 params.add(id);
		 objbyid=Dal.getSingleObject(strSql, params);
		 request.setAttribute("objbyid", objbyid);
		 request.getRequestDispatcher("/admin/proedit.jsp").forward(request, response);
	}
	
	public String getDateFormat(){
		 SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		 return df.format(new Date());    
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id="";
		String proname="";
		String price="";
		String brief="";
		String descriptions="";
		String address="";
		String istop="0";
		String isstar="0";
		String picname="";
		String oldurl="";
		String typeid="";
		
/**************************�������ļ��ϴ��Ĵ���****************************************************************************/			
		String savePath = this.getServletContext().getRealPath("/upload");
		System.out.print(savePath);
        File file = new File(savePath);
        //�ж��ϴ��ļ��ı���Ŀ¼�Ƿ����
        if (!file.exists() && !file.isDirectory()) {
            System.out.println(savePath+"Ŀ¼�����ڣ���Ҫ����");
            //����Ŀ¼
            file.mkdir();
        }
        //��Ϣ��ʾ
        String message = "";
        try{
            //1������һ��DiskFileItemFactory����
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //2������һ���ļ��ϴ�������
            ServletFileUpload upload = new ServletFileUpload(factory);
             //����ϴ��ļ�������������
            upload.setHeaderEncoding("UTF-8"); 
            //3���ж��ύ�����������Ƿ����ϴ���������
            if(!ServletFileUpload.isMultipartContent(request)){
                //���մ�ͳ��ʽ��ȡ����
                return;
            }
            //4��ʹ��ServletFileUpload�����������ϴ����ݣ�����������ص���һ��List<FileItem>���ϣ�ÿһ��FileItem��Ӧһ��Form����������
            List<FileItem> list = upload.parseRequest(request);
            for(FileItem item : list){
                if(item.isFormField()){
                    String name = item.getFieldName();
                    switch(name)
                    {
                    	case "id":id= item.getString("UTF-8"); break;	
                    	case "oldurl":oldurl= item.getString("UTF-8"); break;	
                    	case "proname":proname= item.getString("UTF-8"); break;
                    	case "price":price= item.getString("UTF-8"); break;
                    	case "brief":brief= item.getString("UTF-8"); break;
                    	case "descriptions":descriptions= item.getString("UTF-8"); break;
                    	case "address":address= item.getString("UTF-8"); break;
                    	case "istop":istop= item.getString("UTF-8"); break;
                    	case "isstar":isstar= item.getString("UTF-8"); break;
                    	case "typeid":typeid= item.getString("UTF-8"); break;
                    }
                }else{
                    String filename = item.getName();
                    System.out.println(filename);
                    if(filename==null || filename.trim().equals("")){
                        continue;
                    }
                    String fileextendname = filename.substring(filename.lastIndexOf("."));
                    filename=getDateFormat()+fileextendname;
                    InputStream in = item.getInputStream();
                    String fullname=savePath + "\\" + filename;
                    picname=filename;
                    FileOutputStream out = new FileOutputStream(fullname);
                    byte buffer[] = new byte[1024];
                    int len = 0;
                    while((len=in.read(buffer))>0){
                        out.write(buffer, 0, len);
                    }
                    //�ر�������
                    in.close();
                    //�ر������
                    out.close();
                    //ɾ�������ļ��ϴ�ʱ���ɵ���ʱ�ļ�
                    item.delete();
                    message = "�ļ��ϴ��ɹ���";
                }
            }
        }catch (Exception e) {
            message= "�ļ��ϴ�ʧ�ܣ�";
            e.printStackTrace(); 
        }   	
     
/********************************�������ļ��ϴ��Ĵ���*******************************************************/
        
        
/*********************************���ݱ��浽�����ݿ�*************************************/
         DBHelper Dal=new DBHelper();
		 String strSql=" update tbproduct set proname=?,price=?,brief=?,descriptions=?,address=?,istop=?,isstar=?,imgurl=?,typeid=? where id=?"; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(proname);
		 params.add(price);
		 params.add(brief);	  
		 params.add(descriptions);	
		 params.add(address);	
		 params.add(istop);	
		 params.add(isstar);	
		 if(picname==null||picname.equals(""))
		 {
			 picname=oldurl;
		 }
		 params.add(picname);
		 params.add(typeid);
		 params.add(id);
		 Dal.excuteSql(strSql, params);
/*********************************���ݱ��浽�����ݿ�*************************************/
        response.setCharacterEncoding("utf-8");
   		response.setContentType("text/html;charset=utf-8");
   		response.getWriter().write("<font color='green'>����ɹ�,3��֮������ת!</font>");
   		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/proedit?id="+id);
	
	}

}
