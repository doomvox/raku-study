- [69 cent tour of git](#org006fbc1)
  - [some stops on the tour](#orgf81774f)
    - [first stop: using an existing git repo, e.g.](#org14cc502)
    - [second stop: create a new git repo](#orgbfa982a)
    - [third stop: putting that new git repo on github](#orgc7fdedd)
    - [fourth stop: haven't covered the cool stuff](#org3eb5531)
    - [fifth stop: things you will not do with git](#org85a1508)


<a id="org006fbc1"></a>

# 69 cent tour of git


<a id="orgf81774f"></a>

## some stops on the tour


<a id="org14cc502"></a>

### first stop: using an existing git repo, e.g.

1.  <https://github.com/doomvox/raku-study>

2.  some set-up to do, if not done already:

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

6.  get a local copy of raku-study repository

    ```sh
    git clone git@github.com:doomvox/raku-study.git
    ```

7.  create a file, add and commit

    ```sh
    cd ~/dev/raku-study/bin/2021may02
    echo "say 'hello';" > hello.raku
    raku hello.raku
    git status
    git add hello.raku
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
    git commit -a -m 'added goodbye line to hello.raku'
    git log -n 3
    git diff
    git diff <commit1> <commit2>
    <emacs server-start>
    git pull
    git status
    git commit -a -m'wtf?'
    # git push
    git push -u origin main
    ```
    
    ```sh
    git show REVISION:path/to/file
    ```


<a id="orgbfa982a"></a>

### second stop: create a new git repo

1.  working standalone (without a server like github)

    1.  cd ~/dev/my<sub>project</sub>
    
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

2.  adding version control to existing tree (bruce gray)

    ```sh
    git init ; git add . ; git commit -m 'Initial commit'
    ```


<a id="orgc7fdedd"></a>

### third stop: putting that new git repo on github

1.  creating a new project at github

2.  associating existing repo with new project

    See: /home/doom/End/Cave/Ice/Xtal/Git/github.org


<a id="org3eb5531"></a>

### fourth stop: haven't covered the cool stuff

1.  branch and merging

    \#+BEGIN<sub>SRC</sub> sh git branch # list branches git branch -r # list remote branches git branch new<sub>feature</sub><sub>experiment</sub> git checkout new<sub>feature</sub><sub>experiment</sub>
    
    git checkout master # return to original main branch git merge new<sub>feature</sub><sub>experiment</sub> # import work from branch \\#+END<sub>SRC</sub> sh

2.  github pull request

    <https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests>

3.  stuff to read

    1.  "Pro Git" by Scott Chacon and  Ben Straub
    
        1.  <http://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
        
        2.  Can read on-line, can get hardcopy from (spit) Amazon
        
        3.  But source is at github: <https://github.com/progit/progit2>
    
    2.  alan recommends:
    
        <https://opensource.com/article/21/4/context-switching-git?sc_cid=7016000000127ECAAY>
    
    3.  Randal Schwartz slides
    
        1.  <https://www.slideshare.net/RandalSchwartz/git-a-brief-introduction>
        
        2.  explains some of the internals as well as workflow
        
            1.  object
            
            2.  index

4.  there's a command line tool to do github manipulations without the damn website UI

    1.  <https://cli.github.com/>
    
    2.  unfortunately, this kind of sucks:
    
        1.  whizzy to little purpose
        
            1.  drop-down menus in a CLI tool?
            
            2.  won't work in emacs sub-shell
        
        2.  not sure it's scriptable


<a id="org85a1508"></a>

### fifth stop: things you will not do with git

1.  work with binary files

    (compiled code, media files, ms word docs, etc)

2.  control your entire home directory

3.  share work with another person without using a server

4.  TODO set up a meta-git repository that contains multiple git projects. ((or can you?))
