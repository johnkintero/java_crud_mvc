
package Controller;

import Modelos.Persona;
import Modelos.PersonaValidar;
import java.util.LinkedHashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



/**
 *
 * @author johnjairoquinteropardo
 */
@Controller
public class FormController {

    private PersonaValidar personaValidar;
    
    public FormController() {
        this.personaValidar = new PersonaValidar();
    }
    
    
    
    
     @RequestMapping(value="form.htm",method=RequestMethod.GET)
    /**
    *public ModelAndView form2()
    *{
    *    return new ModelAndView("form","command",new Persona()); //ejemplo metodo sobrecargado de ModelAndView
    *}
    */ 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("form");
        mav.addObject("persona",new Persona());
        return mav;
    }
    
    /**
     * recibimos y validamos los datos de nuestro formulario
     */    
    @RequestMapping(value="form",method=RequestMethod.POST)
    public String form(Persona per, ModelMap modelo, BindingResult result)
    {
        this.personaValidar.validate(per, result);
        if(result.hasErrors())
        {
            modelo.addAttribute("nombre",per.getNombre());
            return "form"; 
        } else
        {
            modelo.addAttribute("nombre",per.getNombre());
            modelo.addAttribute("correo",per.getCorreo());
            modelo.addAttribute("edad",per.getEdad());
            return "exito"; // se refiere a la pagina que se cargara una vez se haga click en el boton del formulario  
        }
        
        
        
    }
    
    /**
     * Metodo para poblar el select de pais
     */
    @ModelAttribute("paisLista")
    public Map<String,String> listadoPaises()
    {
        Map<String,String> pais=new LinkedHashMap<>();
        pais.put("1","Chile");
        pais.put("2","Colombia");
        pais.put("3","Peru");
        pais.put("4","Mexico");
        pais.put("5","Panama");
        pais.put("6","Estados Unidos");
        return pais;
    }
    

    
    
}



