package tpsi;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import static java.util.Objects.isNull;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "StudentListServlet", urlPatterns = {"/studentList"})
public class StudentListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        List<Student> studenci;
        
        if(session.isNew()) {
            studenci = new ArrayList<>();    
            session.setAttribute("licznik", 1);
            session.setAttribute("studenci", studenci);
        }else{
           
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            
            if(!isNull(firstName) && !isNull(lastName) && !isNull(email)) {
                studenci = (List<Student>) session.getAttribute("studenci");
                studenci.add(new Student(firstName,lastName,email));  
                session.setAttribute("studenci", studenci);
            }
            
            Integer counter = (Integer) session.getAttribute("licznik");
            counter++;
            session.setAttribute("licznik", counter);    
        }

        request.getRequestDispatcher("studentList.jsp").forward(request, response);
        
    }
}