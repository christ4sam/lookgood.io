When you create a branch whatever branch you are on, get's copied exactly to the new branch.

To create a branch:

```
git branch <nameofbranch> 
```

Or if you want to create the branch and switch to it.

```
git checkout -b <nameofbranch>
gco -b <nameofbranch>
```

To change branches:

```
git checkout <nameofbranch>
gco <nameofbranch>
```

To list all of the branches:

```
git branch
```

## Merging branches

After working on develop, you want to move the changes to master.

To merge develop to master:

First on develop, we check that there is nothing on master that we don't have:

While on develop:

```
git merge master
```

You should get: Already up-to-date.

## Push to heroku

From master! (After merging all of the finished branches)

```
git push heroku master
```

To look at your app in heroku:

```
heroku open
```

The first time you push you need to add the postgresql addon.

```
heroku addons:create heroku-postgresql --app safe-spire-7671
```

And if you have any changes to your database, you need to migrate the database on heroku:

```
heroku run rake db:migrate
```

<!-- mine for API
do rake db seed to see if the api works -->
