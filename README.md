# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## Test token PAT

si

## Como iniciar el proyecto

### PASO 1: Clonar el proyecto desde github

Clona el proyecto desde GitHub a tu entorno local:

```bash
git clone https://github.com/Andonny1up/vendelo_ruby.git
cd vendelo_ruby
```

### PASO 2: Configurar las dependencias del proyecto

#### a. Instalar dependencias de Ruby

Si aún no tienes bundler, instálalo:

```bash
gem install bundler
```

Luego instala las gemas del proyecto:

```bash
bundle install
```

#### b. Configurar la base de datos

El proyecto usa PostgreSQL, asegúrate de que esté instalada en tu entorno linux o WSL y de configurar las credenciales si lo necesitas en el archivo config/database.yml.

Inicializa la base de datos:

```bash
rails db:setup
```

Para iniciar las migraciones y los datos semillas, usa:

```bash
rails db:migrate
rails db:seed
```

### PASO 3: Inicia el servidor

Para asegurarte de que todo esté funcionando correctamente, inicia el servidor:

```bash
rails s
```

Accede a la aplicación desde tu navegador en http://localhost:3000.
