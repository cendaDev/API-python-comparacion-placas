# Imagen base
FROM python:3.11-slim

# Crear carpeta de la app
WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código
COPY . .
# Exponer puerto
EXPOSE 8000

# Comando para correr el server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
