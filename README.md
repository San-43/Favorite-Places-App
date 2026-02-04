# Favorite Places App

Aplicación Flutter para registrar lugares favoritos con foto y ubicación. Permite guardar la información localmente y visualizarla en un mapa.

## Características

- Crear lugares con título, foto y ubicación actual o seleccionada en el mapa.
- Vista de detalle con imagen, dirección y mapa interactivo.
- Persistencia local mediante SQLite.
- Integración con Google Maps (mapa y geocodificación inversa).

## Requisitos

- Flutter SDK (versión compatible con el `sdk: ^3.7.0`).
- Cuenta y API key de Google Maps.
- Archivo `.env` con las variables necesarias.

## Configuración

1. Crea un archivo `.env` en la raíz del proyecto:

   ```env
   GOOGLE_MAPS_API_KEY=tu_api_key
   OPENAI_API_KEY=tu_api_key
   ```

   > `OPENAI_API_KEY` se usa en la pantalla de chat bot si la habilitas en la UI.

2. Instala dependencias:

   ```bash
   flutter pub get
   ```

3. Ejecuta la app:

   ```bash
   flutter run
   ```

## Estructura del proyecto

- `lib/screens/`: pantallas principales (listado, detalle, mapa, alta de lugar).
- `lib/widgets/`: componentes reutilizables (imagen, ubicación, lista).
- `lib/providers/`: estado y persistencia (Riverpod + SQLite).
- `lib/model/`: modelos de dominio.

## Notas

- Para Google Maps en Android/iOS, asegúrate de configurar las API keys también en los archivos nativos según la guía oficial de Flutter/Google Maps.
- La geocodificación inversa usa la API de Google Maps para obtener la dirección.

