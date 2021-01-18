# An image repository that eventually will be similar to Instagram

## Project Demo

demo of project can be found [here](http://35.232.11.18/). This has been deployed on Kubernetes engine of Google Cloud. Due to money restrictions, this might not be available in the future.

## Running Locally

To start on locally, you need to have docker installed on your local machine.

1. In the command line, navigate to the local-development directory
2. Run the following command

```
  docker-compose up –build

```

3. In your browser go the following root

```
  http://localhost:3050/

```

## Instruction to use the application

People can register to have an account. The account could be public or private. No one has access to the content of a private account, except the owner of that account. the route to register for an account is

```
  /register`

```

After creating an account, the user can log in using the following route

```
  /login`

```

Users can then upload an album of images. Each album should contain at least one image. The upper bound for each album is 100Mb. each album has a description and could be private or public. if a user is public and an album is private, other users cannot see the album. Only the owner can see it.
pictures can be uploaded using the following route

```
  /uploadimage`

```

The profile address for each user with a specific username is

```
  /<username>`

```

For example, for a user with the username "amir", it is similar to

```
  /amir`

```

There could be 3 possibilities for observing someones profile

1. If the owner of the profile is looking for her profile, she would have access to the profile with full albums preview
2. If someone tries to access someone else's profile, if the profile who is looking for is private, she cannot access it
3. Of someone tries to access someone else's profile, if the profile who is looking for is public, she can see the public images of that person

On the profile page, previews of all albums are displayed. By clicking on one of the albums, the person will be redirected to another page in which she can access the preview of all images on the album.
