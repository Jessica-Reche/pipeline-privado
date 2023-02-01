# Usar una imagen de Node.js como base
FROM node:14

# Copiar los archivos de la aplicación al directorio de trabajo
COPY . .

# Ejecutar npm install para instalar las dependencias
RUN npm install

# Especificar el puerto que se expondrá al host
EXPOSE 20000

# Especificar la acción que se ejecutará al iniciar el contenedor
CMD ["npm", "start"]
