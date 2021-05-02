- [69 cent tour of git](#org4907226)
  - [version 0.1](#org75b7c99)
  - [some stops on the tour](#org56e2847)
    - [working with an existing git repo, e.g.](#org893292d)
    - [new topic: create a new git repo](#orgbc54fc2)
    - [starting with existing github repo raku-study](#org1ce7d17)
    - [continuing with a new git repo](#orgdecb566)
    - [the cool stuff](#org7ef25c6)
    - [things you will not do with git](#org8d4f693)


<a id="org4907226"></a>

# 69 cent tour of git


<a id="org75b7c99"></a>

## version 0.1


<a id="org56e2847"></a>

## some stops on the tour


<a id="org893292d"></a>

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


<a id="orgbc54fc2"></a>

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


<a id="org1ce7d17"></a>

### starting with existing github repo raku-study

1.  create an account at github

    1.  have me assign you commit privs to raku-study

2.  edit a file, push changes

3.  resolving a merge conflict


<a id="orgdecb566"></a>

### continuing with a new git repo

1.  creating a new project at github

2.  associating existing repo with new project

    See: /home/doom/End/Cave/Ice/Xtal/Git/github.org


<a id="org7ef25c6"></a>

### the cool stuff

1.  git branch

2.  github pull request

3.  this shit **is** cool, but it can get complicated

    <http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
    
    1.  "Pro Git" by Scott Chacon and  Ben Straub
    
        Can read on-line, also via (spit) Amazon Source is at github: <https://github.com/progit/progit2>


<a id="org8d4f693"></a>

### things you will not do with git

1.  work with binary files

    (compiled code, media files, ms word docs, etc)

2.  control your entire home directory

3.  set up a meta-git repository that contains multiple git projects.

4.  share work with another person without using a server
