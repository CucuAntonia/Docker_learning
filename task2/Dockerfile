# Utilizați o imagine Python existentă ca bază
FROM python:3.9-slim

# Setăm directorul de lucru în cadrul containerului
WORKDIR /app

# Copiem codul sursă al aplicației în container
COPY app.py .

# Instalăm dependențele aplicației, dacă există
# (în acest caz, nu avem dependențe externe)
# RUN pip install <numele_pachetului>

# Expose the port on which the application will run
# EXPOSE <3001>

# Definim comanda care va rula aplicația atunci când containerul este pornit
CMD [ "python", "app.py" ]
