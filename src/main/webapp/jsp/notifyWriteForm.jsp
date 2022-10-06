<%@page import="vada.dao.impl.BoardListDAOImpl"%>
<%@page import="vada.service.BoardListService"%>
<%@page import="java.util.List"%>
<%@page import="vada.dao.impl.BoardViewDAOImpl"%>
<%@page import="java.util.Map"%>
<%@page import="vada.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<jsp:include page="top.jsp" />


<main>

   <div class="container">
      <div class="row">
         <form method="post" action="/Vada/fileupload" enctype="multipart/form-data" accept-charset="utf-8">
         
            <input type="hidden" name="command" value="notifyWrite" /> 
            <input type="hidden" name="productnum" value="${param.productnum}" /> 
         
            <table class="table table-stripped" style="text-align: center; boarder: 1px solid #dddddd">
               
               <thead>
                  <tr>
                     <th colspan="2" style="background-color: #eeeeee; text-align: center;">신고글 작성</th>
                  </tr>
               </thead>
               
               <tbody>
                  <tr>
                     <td style="float: left">신고 게시물 :
                        <a href="/Vada/jsp/boardDetailForm.jsp?productnum=${param.productnum}" >${param.title}</a>
                     </td>
                  </tr>
                  <tr>
                     <td><textarea class="form-control" placeholder="신고 사유" name="notifyreason" maxlength="2048" style="height: 350px"></textarea></td>
                  </tr>
                  <tr>
                     <td style="float: left">첨부파일 : <input type="file" name="file1" /><br />
                  </tr>
                  <tr>
                     <td style="float: left">첨부파일 : <input type="file" name="file2" /><br />
                  </tr>
                  <tr>
                     <td style="float: left">첨부파일 : <input type="file" name="file3" /><br />
                  </tr>
               </tbody>
               
            </table>
            
            <input type="submit" class="btn btn-primary pull-right" value="신고글 등록">
            <button type="button" class="btn btn-primary pull-right" onclick="history.back();">취소</button>
            
         </form>
         
      </div>
   </div>
   
</main>

<jsp:include page="bottom.jsp" />