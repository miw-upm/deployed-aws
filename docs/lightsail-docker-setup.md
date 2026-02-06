# 🐳 Instalación de Docker en Ubuntu
 Guía básica.

---
### 0. Ver versión de SO & usuario conectado
```bash
lsb_release -a
echo $USER
```
### 1. Actualizar la lista de paquetes y del sistema
```bash
sudo apt update
sudo apt upgrade -y
```
### 2. Instalar Docker
```bash
sudo apt install -y docker.io
```
### 3. Añadir el usuario al grupo docker
```bash
sudo usermod -aG docker $USER
```
### 4. Aplicar los cambios de grupo sin cerrar sesión
```bash
newgrp docker
```
### Verificación
```bash
docker --version
```
## Instalación de Docker Compose v2
```bash
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
```

### Verificación de la versión de Docker Compose
```bash
docker compose version
```

## Configuración de red Docker
```bash
docker network create betca
```
### Verificar redes
```bash
docker network ls
```

### Inspeccionar red
```bash
docker network inspect betca
```
