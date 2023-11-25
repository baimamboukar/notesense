FLUTTER = flutter
DART = dart
DEPENDENCIES = auto_route flex_color_scheme get_it dio hive_flutter hive retry glass_kit heroicons flutter_image_stack introduction_screen dartz cached_network_image

DEVDEPENDENCIES = build_runner flutter_launcher_icons flutter_native_splash auto_route_generator hive_generator 
.PHONY: add_all

add_all:
	@echo "[🪄] Adding dependencies..."
	$(FLUTTER) pub add $(DEPENDENCIES)
	@echo "[🎉] Packages added successfully!"

	@echo "[🪄] Adding DEV dependencies..."
	$(FLUTTER) pub add $(DEVDEPENDENCIES)
	@echo "[🎉] DEV dependencies added successfully!"

gen:
	@echo "🪄 Running build_runner..."
	$(FLUTTER) pub run build_runner build --delete-conflicting-outputs
	@echo 🎉 build_runner ran successfully!"

fix:
	@echo "🪄 Running flutter analyze..."
	$(DART) fix --apply
	@echo 🎉 flutter analyze ran successfully!"
