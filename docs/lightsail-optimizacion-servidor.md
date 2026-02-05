## Optimización del Servidor

### Verificación de memoria disponible
```bash
free -h
```

### Configuración de memoria virtual (swap)
```bash
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

### Hacer el swap permanente
```bash
grep -q '^/swapfile ' /etc/fstab || echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

### Verificar swap
```bash
swapon --show
free -h
```

---