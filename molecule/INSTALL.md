# Instalacja środowiska testowego

## Wymagania

* General molecule dependencies (see molecule [installation guide](https://molecule.readthedocs.io/en/latest/installation.html))
* vagrant
* python-vagrant
* środowisko linux/WSL

## Instalacja

Ogólnie najlepiej pracować w środowiku wirtualnym python-a (venv).

Tworzymy środowisko dla projektu, włączamy je, i instalujemy odpowiednie moduły python-a.


Np. przy użyciu [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/)

```bash
mkvirtualenv httpd_whoami
workon httpd_whoami

pip install python-vagrant
pip install molecule
# ...
# po zakończeniu wychodzimy z virtualenv
deactivate

```

## Uruchomienie środowiska

Środowisko tworzymy komendą 'molecule create'

Utworzy to maszyny wirtualne i skonfiguruje je poprzez wywołanie playbook-a [prepare.yml](prepare.yml).

Po utworzeniu możemy użyć 'molecule converge' aby wywołać główny playbook testujący rolę.

Komenda 'molecule test' wykona pełne testy (uwaga - usuwa istniejące maszyny i tworzy je od nowa - co pozwala sprawdzić że rola wykonuje się poprawnie na 'czystej' maszynie)

```bash
# tworzenie i provisioning maszyn testowych
molecule create
# zastosowanie roli do maszyn testowych
molecule converge

# wykonanie pełnego testu włącznie z usunięciem istniejącej maszyny utworzeniem jej od początku i wykonaniem testów
molecule test
```