use v6.d;

# The following are from a class I have written to replace Pod::To::HTML, but more generic. The bulk
# of the code is deleted. Only the sections are left that illustrate the questions.
# Basically, how can some repeated code be eliminated.

# Question 1
# The top part of the code are two Roles, one for two different Templating engines.
# They are combined in a third role, which has a test to determine which set of templates is being used,
# and then to use one of the first two for all further needs. 
# The two Templating roles are similar, but not the same. From the documentation, it should be possible
# to use the 'role name[type] () {}' syntax, but I can't quite work out how.
# The aim is to allow for another templating engine to be added simply.

# Question 2
# Later in the GenericPod class, there is a function 'emit-....'. 
# Reason for emit-... (not really a part of the question):
# When the GenericPod class is instantiated, and a pod tree (from one file) has been processed, there is 
# a lot of data relating to that file. When processing lots of files, it is not necessary to keep all the
# processed data, and instantiating an object for each file takes. So emit, strips out the data needed to be
# kept, and prepares the object for the next file.
# In the emit-.. sub, there is a lot of repeated code. Essentially data is taken from a class attribute, then
# the attirbute is set to Nul. 
# I can't figure out a way to do this in a neater, less error prone manner. I have already had a couple of 
# subtle bugs that arose because I'd not handled the emptying process properly.


role RakuClosureTemplater is export {
    #| maps the key to template and emits the result of the closure
    method rakuclosure-rendition(Str $key, %params --> Str) {
        X::ProcessedPod::MissingTemplates.new.throw unless $.templates-loaded;
        note "At $?LINE rendering with \<$key>" if $.debug;
        # special case some keys.
        # 'zero' is only used to trigger the completion method
        return '' if $key eq 'zero';
        # 'raw' typically does not need any extra processing. If it does, the following line can be commented out.
        return %params<contents> if $key eq 'raw';
        X::ProcessedPod::Non-Existent-Template.new(:$key, :%params).throw
        unless %.tmpl{$key}:exists;
        #special case escape key. The template only expects a String scalar.
        #other templates expect two %
        if $key eq 'escaped' {
            %.tmpl<escaped>(%params<contents>)
        }
        else
        {
            %.tmpl{$key}(%params, %.tmpl)
        }
    }
}

role MustacheTemplater {
    use Template::Mustache;
    # templating parameters.
    has $!engine;
    method mustache-restart-engine {
        $!engine = Nil;
    }
    #| maps the key to template and renders the bloc
    method mustache-rendition(Str $key, %params --> Str) {
        $!engine = Template::Mustache.new without $!engine;
        X::ProcessedPod::MissingTemplates.new.throw unless $.templates-loaded;
        return '' if $key eq 'zero';
        # special case this as there must be no EOL.
        X::ProcessedPod::Non-Existent-Template.new(:$key, :%params).throw
        unless %.tmpl{$key}:exists;
        # templating engines like mustache do not handle logic or loops, which some Pod formats require.
        # hence we pass a Subroutine instead of a string in the template
        # the subroutine takes the same parameters as rendition and produces a mustache string
        # eg P format template escapes containers

        note "At $?LINE rendering with \<$key>" if $.debug;
        my $interpolate = %.tmpl{$key} ~~ Block
                ?? %.tmpl{$key}(%params)
                # if the template is a block, then run as sub and pass in the params
                !! %.tmpl{$key};
        $!engine.render(
                $interpolate,
                %params, :from(%.tmpl)
                )
    }
}

#| SetupTemplates detects which Templater to use depending on the template for format-b
role SetupTemplates does RakuClosureTemplater does MustacheTemplater {
    #| the following are required to render pod. Extra templates, such as head-block and header can be added by a subclass
    has @.required = < block-code comment declarator defn dlist-end dlist-start escaped footnotes format-b format-c
        format-i format-k format-l format-n format-p format-r format-t format-u format-x glossary heading
        item list meta named output para pod raw source-wrap table toc >;
    #| must have templates. Generically, no templates loaded.
    has Bool $.templates-loaded is rw = False;
    has $.templater-is is rw = 'rakuclosure';
    #| storage of loaded templates
    has %.tmpl;
    method modify-templates($templates, :$path = '.' )
    {
        return unless $templates; # no action for blank string or empty Hash
        #code
        self.restart-engine
    }
    #| accepts a string filename that must evaluate to a hash
    #| or a hash of templates
    #| the keys must be a superset of the required templates
    method templates($templates, :$path = '.' ) {
        #code
        $.templates-loaded = True;
        self.set-engine
    }
    #| Some template engines need to be restarted when templates are changed in order to
    #| recompile the templates
    method restart-engine {
        return self.mustache-restart-engine if $.templater-is eq 'mustache';
        # rakuclosure does not restart engine because templates are compiled by Raku
    }
    #| rendition takes a key and parameters and calls the template for the key
    method rendition(Str $key, %params --> Str) {
        # different engines will handle this differentiy. There is surely a more Raku way of doing this.
        return self.mustache-rendition( $key, %params ) if $.templater-is eq 'mustache';
        self.rakuclosure-rendition( $key, %params )
    }
    method set-engine {
        if %!tmpl<format-b> ~~ Str and %!tmpl<format-b> ~~ / '{{' / {
            $.templater-is = 'mustache'
        }
        else {
            $.templater-is = 'rakuclosure'
        }
    }
}

# How can this be done before GenericPod is defined. Currently this is at the end.
#class ProcessedPod is GenericPod does SetupTemplates { }

class GenericPod {

    #| the name of the anchor at the top of a source file
    constant DEFAULT_TOP = '___top';
    #| Text between =TITLE and first header, this is used to refer for textual placenames
    has $.front-matter is rw = 'preface';
    #| Name to be used in titles and files.
    has Str $.name is rw is default('UNNAMED') = 'UNNAMED';
    #| The string part of a Title.
    has Str $.title is rw is default('UNNAMED') = 'UNNAMED';
    #| A target associated with the Title Line
    has Str $.title-target is rw is default(DEFAULT_TOP) = DEFAULT_TOP;
    has Str $.subtitle is rw is default('') = '';
    #| should be path of original document, defaults to $.name
    has Str $.path is rw is default('UNNAMED') = 'UNNAMED';
    #| defaults to top, then becomes target for TITLE
    has Str $.top is rw is default(DEFAULT_TOP) = DEFAULT_TOP;
    #| defaults to not escaping characters when in a code block
    has Bool $.no-code-escape is rw is default(False) = False;

    # document level information

    #| language of pod file
    has $.lang is rw is default('en') = 'en';
    #| default extension for saving to file
    #| should be set by subclasses
    has $.def-ext is rw is default('') = '';

    # Output rendering information
    #| set to True eliminates meta data rendering
    has Bool $.no-meta is rw = False;
    #| set to True eliminates rendering of footnotes
    has Bool $.no-footnotes is rw = False;
    #| set to True to exclude TOC even if there are headers
    has Bool $.no-toc is rw = False;
    #| set to True to exclude Glossary even if there are internal anchors
    has Bool $.no-glossary is rw = False;

    # debugging
    #| outputs to STDERR information on processing
    has Bool $.debug is rw = False;
    #| outputs to STDERR more detail about errors.
    has Bool $.verbose is rw = False;

    # populated by process-pod method
    #| single process call
    has Str $.pod-body is rw;
    #| concatenation of multiple process calls
    has Str $.body is rw = '';
    #| information to be included in eg html header
    has @.raw-metadata;
    #| metadata when rendered
    has Str $.metadata;
    #| toc structure , collected and rendered separately to body
    has @.raw-toc;
    #| rendered toc
    has Str $.toc;
    #| glossary structure
    has %.raw-glossary;
    #| rendered glossary
    has Str $.glossary;
    #| footnotes structure
    has @.raw-footnotes;
    #| rendered footnotes
    has Str $.footnotes;
    #| when source wrap is called
    has Str $.renderedtime is rw is default('') = '';
    #| the set of targets used in a rendering process
    has SetHash $.targets .= new;
    #| config data given to the first =begin pod line encountered
    #| there may be multiple pod blocks in a file, and they may be
    #| sequentially rendered.
    has %.pod-config-data is rw;
    #| A pod line may have no config data, so flag if pod block processed
    has Bool $.pod-block-processed is rw = False;

    #| Structure to collect links, eg. to test whether they all work
    has %.links;

    #| custom blocks
    has @.custom = ();
    #| plugin data
    has %.plugin-data = {};

    # variables to manage Pod state, where rendering is dependent on local context
    #| for multilevel lists
    has @.itemlist;
    #| used to register state when processing a definition list
    has Bool $!in-defn-list = False;

    #| deletes any previously processed pod, keeping the template engine cache
    #| does not change flags relating to highlighting
    method emit-and-renew-processed-state(--> Hash) {
        self.render-structures;
        my %h =
            :$!name,
            :$!title,
            :$!title-target,
            :$!subtitle,
            :$!metadata,
            :$!toc,
            :$!glossary,
            :$!footnotes,
            :$!body,
            :$!path,
            :$!renderedtime,
            :$!targets,
            :links(%!links.clone),
            :pod-data(%!pod-config-data.clone),
            :raw-metadata(@!raw-metadata.clone),
            :raw-toc(@!raw-toc.clone),
            :raw-glossary(%!raw-glossary.clone),
            :raw-footnotes(@!raw-footnotes.clone),
            :templates-used( $.templs-used.clone )
        ;
        #clean out the variables, whilst keeping the Templating engine cache.
        $!name = Nil;
        $!title = Nil;
        $!title-target = Nil;
        $!subtitle = Nil;
        $!metadata = Nil;
        $!toc = Nil;
        $!glossary = Nil;
        $!footnotes = Nil;
        $!body = Nil;
        $!path = Nil;
        $!renderedtime = Nil;
        @!raw-metadata = @!raw-toc = @!raw-footnotes = ();
        %!raw-glossary = Empty;
        %!links = Empty;
        %!pod-config-data = Empty;
        $!pod-block-processed = False;
        $!targets = Nil;
        $.templs-used = Nil; # provided by Role
        %h
    }

}

class ProcessedPod is GenericPod does SetupTemplates { }
