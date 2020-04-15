package tpsi;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Person> osoby = new ArrayList<>();
        osoby.add(new Person("Piotr","Wyczołek","wp41564@zut.edu.pl"));
        osoby.add(new Person("Adam","Nowak","na41123@zut.edu.pl"));
        osoby.add(new Person("Andrzej","Kowalski","ka41321@zut.edu.pl"));
        osoby.add(new Person("Paweł","Niewiadomski","np41231@zut.edu.pl"));
        osoby.add(new Person("Agata","Kowalczyk","ka41213@zut.edu.pl"));
        
        request.setAttribute("osoby", osoby);
        
        request.getRequestDispatcher("personList.jsp").forward(request, response);
    }
}