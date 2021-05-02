- [69 cent tour of git](#org83a3a46)
  - [some stops on the tour](#org0259b57)
    - [first stop: using an existing git repo, e.g.](#org80257a4)
    - [second stop: create a new git repo](#org8be16e7)
    - [third stop: putting that new git repo on github](#orgbadc488)
    - [fourth stop: haven't covered the cool stuff](#org203f76f)
    - [fifth stop: things you will not do with git](#org821e148)


<a id="org83a3a46"></a>

# 69 cent tour of git


<a id="org0259b57"></a>

## some stops on the tour


<a id="org80257a4"></a>

### first stop: using an existing git repo, e.g.

1.  <https://github.com/doomvox/raku-study>

2.  set-up to do if not done already:

    1.  create a github account
    
    2.  get added to raku-study as a collaborator
    
        1.  Settings->Manage Access->Invite a collaborator
        
            <https://github.com/doomvox/raku-study/settings/access>
    
    3.  share your public ssh key (rsa, not dsa) at your github account
    
        1.  picture button (top-right)->Settings->SSH and GPG keys->New SSH key button
        
            <https://github.com/settings/keys>
        
        2.  Add your "ssh-rsa" from: ~/.ssh/id<sub>rsa.pub</sub>
        
            1.  if you don't have one yet, run:
            
                ```perl6
                ssh-keygen -t rsa
                ```
            
            2.  ssh config:  add github
            
                ~/.ssh/config
                
                ```sh
                Host github.com
                   Hostname ssh.github.com
                   Port 443
                   IdentityFile /home/doom/.ssh/id_rsa
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

6.  git a local copy of raku-study repository

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
    
        1.  they're long but you can abbreviate to 5 or 6 chars
    
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
    # git push
    git push -u origin main
    ```
    
    ```sh
    git show REVISION:path/to/file
    ```


<a id="org8be16e7"></a>

### second stop: create a new git repo

1.  working standalone (without a server like github)

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


<a id="orgbadc488"></a>

### third stop: putting that new git repo on github

1.  creating a new project at github

2.  associating existing repo with new project

    See: /home/doom/End/Cave/Ice/Xtal/Git/github.org


<a id="org203f76f"></a>

### fourth stop: haven't covered the cool stuff

1.  git branch

2.  github pull request

    <https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>

3.  branches can get complicated

    <http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
    
    1.  "Pro Git" by Scott Chacon and  Ben Straub
    
        Can read on-line, also can get from (spit) Amazon But source is at github: <https://github.com/progit/progit2>


<a id="org821e148"></a>

### fifth stop: things you will not do with git

1.  work with binary files

    (compiled code, media files, ms word docs, etc)

2.  control your entire home directory

3.  set up a meta-git repository that contains multiple git projects.

4.  share work with another person without using a server
