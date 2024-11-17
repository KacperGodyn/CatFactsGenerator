# Użyj oficjalnego obrazu Node.js jako bazowego
FROM node:14

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj pliki package.json i package-lock.json do kontenera
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę plików aplikacji do kontenera
COPY . .

# Eksponuj port, na którym działa aplikacja (domyślnie 3000 dla React)
EXPOSE 3000

# Uruchom aplikację
CMD ["npm", "start"]
