# Penny Flow

Penny Flow es una aplicación de gestión de dinero personal diseñada para ayudarte a realizar un seguimiento de tus ingresos y gastos. Construida enteramente con Elixir, esta aplicación permite a los usuarios gestionar sus finanzas de manera eficiente y colaborativa.

## Características

- **Registro de Ingresos y Gastos**: Inserta el dinero total que tienes y añade los gastos diarios.
- **Categorías de Gastos**: Organiza tus gastos diarios en diferentes categorías.
- **Balance Actualizado**: Visualiza el balance actualizado restando los gastos del dinero total.
- **Ingresos y Gastos Recurrentes**: Programa ingresos y gastos recurrentes para una planificación financiera más precisa.
- **Multiusuario**: Permite que varias personas gestionen una única cuenta compartida.
- **Notificaciones en Tiempo Real** (próximamente): Recibe notificaciones instantáneas sobre movimientos en tu cuenta.

## Tecnologías Utilizadas

- **Elixir**: Para la lógica de negocio, gestión de datos y API.
- **Phoenix Framework**: Para la construcción de interfaces web y API.
- **Ecto**: Para la manipulación de datos y la integración con la base de datos.
- **Arquitectura Hexagonal**: Para una estructura de código mantenible y escalable.

## Instalación

1. Clona este repositorio:
   ```bash
   git clone https://github.com/Mohibul-Alom/pennyflow
   ```
2. Navega al directorio del proyecto:
   ```bash
   cd penny_flow
   ```
3. Instala las dependencias:
   ```bash
   mix deps.get
   ```

## Uso

Para iniciar la aplicación:

```bash
mix phx.server
```

Para ejecutar los tests:

```bash
mix test
```
