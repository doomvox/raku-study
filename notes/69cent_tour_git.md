- [69 cent tour of git](#org06970cc)
  - [version 0.1](#org004997d)
  - [some stops on the tour](#org55d3fa4)
    - [working with an existing git repo, e.g.](#org2fb0d4e)
    - [new topic: create a new git repo](#orgd1fa5ce)
    - [follow on topic: putting a new git repo on github](#orgb6c4fd8)
    - [the cool stuff &#x2013; haven't really covered any of it](#orgb9c22b8)
    - [things you will not do with git](#orgf8bcc8b)


<a id="org06970cc"></a>

# 69 cent tour of git


<a id="org004997d"></a>

## version 0.1


<a id="org55d3fa4"></a>

## some stops on the tour


<a id="org2fb0d4e"></a>

### working with an existing git repo, e.g.

1.  <https://github.com/doomvox/raku-study>

2.  set-up to do if not done already:

    1.  create a github account
    
    2.  get added to raku-study as a collaborator
    
        1.  Settings->Manage Access->Invite a collaborator
    
    3.  share your public ssh key (rsa, not dsa) at your github account
    
        1.  picture button (top-right)->Settings (near bottom)->SSH and GPG keys->New SSH key button (uppper right)
        
        2.  Add your "ssh-rsa" from: ~/.ssh/id<sub>rsa.pub</sub>
        
            1.  if you don't have one yet, run:
            
                ```perl6
                ssh-keygen -t rsa
                ```

3.  go to the "Code" button near the right, click for the drop-down

4.  with the SSH tab selected (the default) you'll see:

    ```sh
    git@github.com:doomvox/raku-study.git
    ```

5.  create a location to work, e.g.:

    ```sh
    mkdir /tmp/dev
    cd /tmp/dev
    ```

6.  use git get a local copy of raku-study repository

    ```sh
    git clone git@github.com:doomvox/raku-study.git
    ```

7.  create a file, add and commit

    ```sh
    cd /tmp/dev/raku-study/bin/2021may02
    echo "say 'hello';" > hello.raku
    raku hello.raku
    git status
    git commit -m'created demo script hello.raku'
    git log -n 3
    git log -n 3 --oneline
    git log --oneline | egrep 'created demo'
    ```

8.  to do and to notice

    1.  note: no sequential version numbers
    
    2.  "commits" are SHA1 hashes
    
        1.  they're long but you can abbreivate to 5 or 6 chars
    
    3.  not file oriented: commits can include changes throughout the tree

9.  edit the file, check diff, commit

    ```sh
    echo "say 'goodbye';" >> hello.raku
    git status
    git diff
    git commit -m 'added goodbye line to hello.raku'
    git commit -a -m 'added goodbye line to hello.raku'
    git log -3
    git diff
    git diff <commit1> <commit2>
    git pull
    git status
    git commit -a -m'wtf?'
    git push
    ```


<a id="orgd1fa5ce"></a>

### new topic: create a new git repo

1.  working standalone

    1.  cd <where<sub>ever</sub>>
    
    2.  git init
    
    3.  git add
    
    4.  git status
    
    5.  .gitignore
    
        ```sh
        *~   
        *#* 
        *.[oa]
        ```
    
    6.  .git/info/exclude

2.  resolving a merge conflict


<a id="orgb6c4fd8"></a>

### follow on topic: putting a new git repo on github

1.  creating a new project at github

2.  associating existing repo with new project

    See: /home/doom/End/Cave/Ice/Xtal/Git/github.org


<a id="orgb9c22b8"></a>

### the cool stuff &#x2013; haven't really covered any of it

1.  git branch

2.  github pull request

3.  this shit **is** cool, but it can get complicated

    <http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
    
    1.  "Pro Git" by Scott Chacon and  Ben Straub
    
        Can read on-line, also via (spit) Amazon Source is at github: <https://github.com/progit/progit2>


<a id="orgf8bcc8b"></a>

### things you will not do with git

1.  work with binary files

    (compiled code, media files, ms word docs, etc)

2.  control your entire home directory

3.  set up a meta-git repository that contains multiple git projects.

4.  share work with another person without using a server
