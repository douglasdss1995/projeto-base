clean:
	rm -rf .pytest_cache/ .mypy_cache/ __pycache__/ .venv/

build: clean
	uv sync --all-extras
	uv run pre-commit install

lint:
	uv run ruff check .
	uv run ruff format .

pre-version:
	git config gc.auto 0
	git checkout main
	git merge develop

major-version: lint pre-version
	uv run bumpversion major --message "Upgrade version to {new_version}"
	git config --unset gc.auto
	git branch -f develop main

release-version: lint pre-version
	uv run bumpversion minor --message "Upgrade version to {new_version}"
	git config --unset gc.auto
	git branch -f develop main

fix-version: lint
	git config gc.auto 0
	uv run bumpversion patch --message "Upgrade version to {new_version}"
	git config --unset gc.auto
