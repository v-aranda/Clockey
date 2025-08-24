{ pkgs }:

{
    deps = [
        pkgs.php
        pkgs.composer
        pkgs.nodejs
    ];

    buildPhase = ''
        composer install --no-dev --optimize-autoloader
        npm install
        npm run prod
    '';
}
