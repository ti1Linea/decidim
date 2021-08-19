# Docker Decidim 

Este contenedor tiene una imagen de [Decidim](https://decidim.org/)

### Prerequisitos


Para ejecutar este contenedor, necesitará instalar Docker.


* [Linux](https://docs.docker.com/linux/started/)

### Uso

#### Parametros

Configuración inicial de la aplicación, creación de la base de datos y población de la misma

```shell
docker-compose -f docker-compose.yml up
```

Para correr la configuración del docker producción

```shell
docker-compose -f docker-compose-prod.yml up -d
```


#### Variables del sistema

* `USUARIO ADMIN` - admin@example.org
* `CONTRASEÑA_ADMIN` - decidim123456 


#### Volumenes

* `./pg-data` - Volumen para los archivos de la base de datos en postgres

* `./redis-data` - Volumen para los archivos de redis

#### Ubicación de archivos útiles

* `./scripts/docker-entrypoint.sh` - Configuración inicial para la creación y actualización de la base de datos de decidim
  
* `./scripts/docker-entrypoint-prod.sh` - Configuración de producción donde solo se actualizaría la estructura de la base si hay cambios
  


## Construido con 

* Docker compose v3
* Decidim imagen 0.24.3
* Ruby and Rails
* Postgresql
* Redis
* Visual Studio Code



## Autor

* **Fernando Vargas** - *Configuración inicial* - [@kisamat](https://github.com/kisamat/)

## Licencia

Este proyecto esta licenciado bajo la GNU Affero General Public License v3.0 - [LICENSE.md](https://www.gnu.org/licenses/agpl-3.0.en.html) para más detalles.

