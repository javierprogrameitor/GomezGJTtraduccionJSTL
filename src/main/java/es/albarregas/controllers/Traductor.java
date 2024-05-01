
package es.albarregas.controllers;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javier
 */
@WebServlet(name = "Traductor", urlPatterns = {"/Traductor"})
public class Traductor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idioma = request.getParameter("idioma");
        String idiomaSeleccionado;
        Locale locale;

        switch (idioma) {
            case "ingles":
                locale = new Locale("en", "US");
                idiomaSeleccionado = "Inglés";
                break;
            case "frances":
                locale = new Locale("fr", "FR");
                idiomaSeleccionado = "Francés";
                break;
            case "aleman":
                locale = new Locale("de", "DE");
                idiomaSeleccionado = "Alemán";
                break;
            case "italiano":
                locale = new Locale("it", "IT");
                idiomaSeleccionado = "Italiano";
                break;
            case "portugues":
                locale = new Locale("pt", "PT");
                idiomaSeleccionado = "Portugués";
                break;
            case "ruso":
                locale = new Locale("ru", "RU");
                idiomaSeleccionado = "Ruso";
                break;
            case "chino":
                locale = new Locale("zh", "ZH");
                idiomaSeleccionado = "Chino";
                break;
            case "japones":
                locale = new Locale("ja", "JA");
                idiomaSeleccionado = "Japonés";
                break;
            case "arabe":
                locale = new Locale("ar", "AR");
                idiomaSeleccionado = "Árabe";
                break;
            default:
                locale = new Locale("es", "ES");
                idiomaSeleccionado = "Español";
        }

        ResourceBundle bundle = ResourceBundle.getBundle("Sources/source", locale);
        String holaMundo = bundle.getString("Hola") + " " + bundle.getString("Mundo");
        request.setAttribute("holaMundo", holaMundo);
        request.setAttribute("idioma", idiomaSeleccionado);

        request.getRequestDispatcher("JSP/Traduciones.jsp").forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
