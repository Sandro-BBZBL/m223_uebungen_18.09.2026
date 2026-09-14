# Exploding Fist Bump – Modul 223, 2026

Dieser Stand ist die **Lösung für Übung 1** und die **Ausgangslage für Übung 2: Autorisierung**.
Registrierung, Login/Logout, Eigentümerzugriff und private Entwürfe funktionieren.
Nur lokal als Lernanwendung verwenden.

## Start

Ruby **4.0.6**, Rails **8.1.3.1**, SQLite3. Die Rails-Version steht im Gemfile,
die übrigen Abhängigkeiten im Lockfile. Kein Node-/Tailwind-Setup nötig.

```sh
mise trust
mise install
bundle install
bin/rails db:prepare
bin/rails db:seed
bin/rails server
```

Öffne http://localhost:3000/posts. `bin/rails test` prüft die Startbasis.
Die Demo-Seeds dürfen nur in der Entwicklungsumgebung ausgeführt werden.

## Aktueller Übungsstand

**Lösung für Übung 1 / Start für Übung 2: Autorisierung**

Ergänzt eine Admin-Rolle und Pundit-Policies. Öffentliche Beiträge bleiben öffentlich; eigene Entwürfe bleiben für andere Autoren unsichtbar.

Für einen späteren Einstieg einen neuen Clone-Ordner verwenden. So bleiben eigene
Änderungen und lokale Daten erhalten. Ein Git-Branchwechsel allein wechselt die
Datenbank nicht mit.

## Demo-Benutzer

`anna@example.test` und `ben@example.test`, jeweils Passwort `supersecret`.
Die Konten stammen aus `db/seeds.rb`. Erneutes `bin/rails db:seed` setzt ihre Demo-Passwörter auf `supersecret`.
Jede Person besitzt einen öffentlichen Beitrag und einen privaten Entwurf.
Benutze einen normalen Tab und einen Inkognito-Tab für zwei gleichzeitige Sitzungen.
Bei einer frischen Kopie auf diesem Stand sind keine Schritte aus früheren Übungen nötig.

## Branches für den Wiedereinstieg

| Übung | Start | Lösung |
|---|---|---|
| Blog | `blog` | `blog-solution` |
| Autorisierung | `authorization` | `authorization-solution` |
| Transaktionen | `transactions` | `transactions-solution` |
| Testing | `testing` | `testing-solution` |

Beispiel: `git clone --branch authorization https://gitlab.com/danielpuglisi/explodingfistbump.git exploding-fist-bump-02`

Die Ruby-Version ist in `mise.toml` und `.ruby-version` festgelegt. Testing ist Übung 4 an Tag 2 (ca. 45 Minuten).
