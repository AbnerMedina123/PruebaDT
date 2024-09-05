# Usa una imagen base oficial de Node.js
FROM node:14

# Establece el directorio de trabajo en la imagen Docker
WORKDIR /app

# Copia el package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que la aplicación estará corriendo
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["node", "index.js"]
