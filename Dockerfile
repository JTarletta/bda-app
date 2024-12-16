# Usar una imagen base de Python
FROM python:3.9-slim

# Crear y establecer el directorio de trabajo
WORKDIR /app

# Copiar todo el proyecto al contenedor
COPY . .

# Instalar las dependencias
RUN pip install -r requirements.txt

# Exponer el puerto 5000 para la API
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
