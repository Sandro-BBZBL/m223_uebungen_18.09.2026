# Exploding Fist Bump – Modul 223, 2026

Dieser Stand ist die **Ausgangslage für Übung 1: Multi-User-Blog**.
CRUD funktioniert bereits. Anmeldung und Zugriffsschutz fehlen absichtlich.
Nur lokal als Lernanwendung verwenden.

## Start

Ruby **3.4.7**, Rails **8.0.2.1**, SQLite3. Die Rails-Version steht im Gemfile,
die übrigen Abhängigkeiten im Lockfile. Kein Node-/Tailwind-Setup nötig.

```sh
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
| Blog | `codex/2026/01-blog-start` | `codex/2026/01-blog-loesung` |
| Autorisierung | `codex/2026/02-autorisierung-start` | `codex/2026/02-autorisierung-loesung` |
| Transaktionen | `codex/2026/03-transaktionen-start` | `codex/2026/03-transaktionen-loesung` |
| Testing | `codex/2026/04-testing-start` | `codex/2026/04-testing-loesung` |

Beispiel: `git clone --branch codex/2026/02-autorisierung-start https://gitlab.com/danielpuglisi/explodingfistbump.git exploding-fist-bump-02`
