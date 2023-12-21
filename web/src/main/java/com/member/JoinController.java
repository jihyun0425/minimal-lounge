package com.member;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/member1/join.do")
public class JoinController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/member1/Join.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost 진입 성공!");
        req.setCharacterEncoding("UTF-8");

        String id = (req.getParameter("id"));
        String pw = req.getParameter("pw");
        String email = req.getParameter("email");

        MemberDAO dao = new MemberDAO();
        MemberDTO mDto = new MemberDTO();

        mDto.setUser_id(id);
        mDto.setPassword(pw);
        mDto.setEmail(email);
        System.out.println(pw);
        int joinResult = dao.join(mDto);

        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        if (joinResult == 1) {
            out.println("<script>alert('회원가입에 성공했습니다.');location.href='/member1/Login.jsp';</script>");
        } else {
            out.println("<script>alert('회원가입에 실패했습니다.');location.href='../member1/Join.jsp';</script>");
        }
        out.flush();
    }
}

