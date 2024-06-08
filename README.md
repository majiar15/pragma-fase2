# reto pragma fase 2

## arquitectura

este reto fue realizado utilizando clean architecture, fue realizado utilizando la metodología DDD (domain-diven-desing)

estructura:
- data
    - api -> aqui esta la logica de consulta a api externas, estas implementan el repository
- domain
    - models -> en esta capa se tiene los modelos de datos utilizados en la app
    - repositories -> esta es una capa de de abstracción que permite a domain conocer cuales son los métodos del repositorio
    - use_cases -> esta capa contiene lógica de negocios, puede llamar al repository para realizar acciones con los datos
- main -> en este archivo se ejecuta todo el flujo de la app


### Consideraciones
la clase injector fue creada para abstraer la lógica de realizar la injeccion de dependencias, esta clase pude instanciarse para acceder a los casos de uso

## Instalación 🔧

### _1. clone el repositorio_

```
git clone https://github.com/majiar15/pragma-fase2
```

### _2. instale los paquetes_

```
flutter pub get
```

### _3. encendemos la aplicacion_

```
flutter run
```


