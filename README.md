# Exploding Fist Bump – Modul 223, 2026

Dieser Stand ist die **Ausgangslage für Übung 1: Multi-User-Blog**.
CRUD funktioniert bereits. Anmeldung und Zugriffsschutz fehlen absichtlich.
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

**Start für Übung 1: Multi-User-Blog**

CRUD funktioniert. Ergänzt Registrierung, Login/Logout, Eigentümerzugriff und private Entwürfe. Die fehlende Absicherung ist in diesem Startstand absichtlich Teil der Aufgabe.

Für einen späteren Einstieg einen neuen Clone-Ordner verwenden. So bleiben eigene
Änderungen und lokale Daten erhalten. Ein Git-Branchwechsel allein wechselt die
Datenbank nicht mit.

## Branches für den Wiedereinstieg

| Übung | Start | Lösung |
|---|---|---|
| Blog | `blog` | `blog-solution` |
| Autorisierung | `authorization` | `authorization-solution` |
| Transaktionen | `transactions` | `transactions-solution` |
| Testing (freiwillige Reserve) | `testing` | `testing-solution` |

Beispiel: `git clone --branch authorization https://gitlab.com/danielpuglisi/explodingfistbump.git exploding-fist-bump-02`

Die Ruby-Version ist in `mise.toml` und `.ruby-version` festgelegt. Testing ist kein Pflichtblock des Kurses.
