package Modelos;

/**
 *
 * @author johnjairoquinteropardo
 */
public class Persona {
    private int id;
    private String nombre;
    private String correo;
    private int edad;
    private int pais;

    /*************************************/
    /* CONSTRUCTORES                     */
    /*************************************/
    
    //Constructor vacio
    public Persona() {
    }

    //Constructor
    public Persona(String nombre, String correo, int edad) {
        this.nombre = nombre;
        this.correo = correo;
        this.edad = edad;
    }

    /*************************************/
    /* GETTERS SETTERS                     */
    /*************************************/
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }
    
    
    
}
