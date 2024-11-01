# Tombstones

The web version of https://github.com/shrayasr/silence

Building this out with RoR to understand 'convention over configuration' style of building web apps.

## Screenshots

<table>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/eb87cd70-89ad-4783-a2e1-dd61a1ce9915" />
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/3f9d7662-7418-4ef6-be4a-116907692a15" />
    </td>
  </tr>
  <tr>
    <th>Home page</th>
    <th>Individual page</th>
  </tr>
</table>

## Running the project

- Run a docker build
  ```
  docker build -t tombstones .
  ```
- Run tombstones
  ```
  docker run -p 8888:3000 --name tombstones -v ./prod:/rails/prod -e RAILS_MASTER_KEY=<fill> -e TOMBSTONES_DB_FOLDER=./prod tombstones
  ```

## TODO 

- [X] Attach images to people
- [X] Take basic auth from configuration instead of hardcode
- [X] Check responsiveness 
- [X] [Setup SQLite in WAL mode](https://stackoverflow.com/a/56286515)
- [X] Add links to new and edit
- [X] Allow empty lines in about
- [X] Rename app to "Tombstones"
- [ ] Domain & Deploy
- [ ] Configure Litestream
