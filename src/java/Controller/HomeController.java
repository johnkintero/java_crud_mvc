
package Controller;

import Modelos.Persona;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author johnjairoquinteropardo
 */
@Controller  //con esta notacion se informa que esta clase va  a comportar como un controlador
public class HomeController 
{
    
    @RequestMapping("home.htm") // a cada metodo hay que definirle esta anotacion
    public ModelAndView home(HttpServletRequest request)
    {
        ModelAndView mav  = new ModelAndView();
        mav.setViewName("home");
        String id = request.getParameter("id");
        String id2 = request.getParameter("id2");
        //Integer x = id + id2 // como castear en java
        mav.addObject("id", id);
        mav.addObject("id2", id2);
        return mav;        
    }
    @RequestMapping("nosotros.htm") // a cada metodo hay que definirle esta anotacion
    public ModelAndView nosotros()
    {
        ModelAndView mav  = new ModelAndView();
        mav.setViewName("nosotros"); // nombre del archivo jsp que se cargara
        return mav;        
    }
    @RequestMapping("ejebootstrap.htm") // a cada metodo hay que definirle esta anotacion
    public ModelAndView ejebootstrap()
    {
        ModelAndView mav  = new ModelAndView();
        mav.setViewName("ejebootstrap"); // nombre del archivo jsp que se cargara
        return mav;        
    }
}
