# flutter_breaking

Cross-platform Flutter app

Description

Cross-platform Flutter application that fetches and displays character data with a searchable list and a detailed character view. The project follows a layered architecture to separate responsibilities: WebServices → Repository → Cubit (Bloc) → UI. It also supports an Offline Mode that detects when there is no internet connection and displays a dedicated “No Internet” screen.

## Technologies

- Dart
- Flutter
- Dio (HTTP client)
- Bloc / Cubit (state management)
- get_it (dependency injection)
- Flutter offline package

## Architecture

Layered architecture used in this project:

- WebServices: responsible for HTTP requests and raw responses.
- Repository: transforms raw responses into model objects and handles data logic.
- Cubit (Bloc): manages UI state, reacts to user interactions and repository results.
- UI: presentation layer (screens & widgets) which subscribes to Cubit state.

This separation allows easier testing and clearer responsibilities.

## Screenshots

Home, Detail, Search feature and Offline mode 

<table>
	<tr>
		<td><img src="assets/images/3.jpg" width="360" alt="Home screenshot"/></td>
		<td style="padding-left:12px"><img src="assets/images/2.jpg" width="360" alt="Detail screenshot"/></td>
	</tr>
	<tr>
		<td style="padding-top:8px"><img src="assets/images/1.jpg" width="360" alt="Search screenshot"/></td>
		<td style="padding-left:12px; padding-top:8px"><img src="assets/images/4.jpg" width="360" alt="Offline mode screenshot"/></td>
	</tr>
</table>
