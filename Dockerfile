# Usar una imagen de Node.js como base
FROM node:14

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación al directorio de trabajo
COPY . .

# Ejecutar npm install para instalar las dependencias
RUN npm install



# Especificar la acción que se ejecutará al iniciar el contenedor
CMD ["npm", "start"]
