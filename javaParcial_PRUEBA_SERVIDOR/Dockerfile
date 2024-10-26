# Usa una imagen base de Tomcat compatible con tu versión de Java
FROM tomcat:8.5-jdk8

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/local/xampp/tomcat/webapps

# Copiar la aplicación y sus recursos al contenedor de Tomcat
COPY ./WebContent /usr/local/xampp/tomcat/webapps/javaParcial_PRUEBA_SERVIDOR/
COPY ./WebContent /WEB-INF/lib/ /usr/local/xampp/tomcat/lib/


# Exponer el puerto que usará Tomcat
EXPOSE 8080

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]
