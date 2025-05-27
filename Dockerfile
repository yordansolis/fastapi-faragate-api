FROM python:3.9


# SE COPIA TODO EL CONTENIDO DENTO DE LA APP 
WORKDIR /code

# SE COPIA EL ARCHIVO DE REQUERIMIENTOS EN /CODE
COPY ./requirements.txt /code/requirements.txt

# SE INSTALAN LAS DEPENDENCIAS 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# SE COPIA TODO EL CONTENIDO DENTRO DE LA APP 
COPY ./app /code/app

# SE EXPONE EL PUERTO
EXPOSE 81

# SE EJECUTA LA APP CON UVICORN
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "81"]