# Usa Python 3.12 como base
FROM python:3.12-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 8080 (requerido por Cloud Run)
EXPOSE 5000

# Comando de inicio de la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
