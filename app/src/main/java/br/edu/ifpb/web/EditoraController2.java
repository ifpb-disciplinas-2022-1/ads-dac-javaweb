
package br.edu.ifpb.web;

import br.edu.ifpb.infra.EditorasEmJDBC;
import br.edu.ifpb.domain.Editora;
import br.edu.ifpb.domain.Editoras;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
//@WebServlet(name = "EditoraController2",urlPatterns = {"/editora/editoras2.do"})
public class EditoraController2 extends HttpServlet {

    private Editoras editoras = new EditorasEmJDBC();

    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) 
        throws ServletException,IOException {
        String localDeOrigem = req.getParameter("localDeOrigem");
        String nomeFantasia = req.getParameter("nomeFantasia");
        editoras.nova(
            new Editora(localDeOrigem,nomeFantasia)
        );
        resp.sendRedirect("editoras.do");
    }
    

    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
        throws ServletException,IOException {
        request.setAttribute("editoras",editoras.todas());
        request.getRequestDispatcher("listar.jsp")
            .forward(request,response);
    }
 
@Override
    public void init() throws ServletException {
        super.init(); 
    }
}
