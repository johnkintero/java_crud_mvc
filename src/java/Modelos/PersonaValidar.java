package Modelos;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class PersonaValidar implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return Persona.class.isAssignableFrom(type);
        //return nombreClase.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Persona persona=(Persona)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required.nombre", "El campo nombre es obligatorio");
    }
    
}
