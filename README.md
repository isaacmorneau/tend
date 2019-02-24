# tend
a super simple bash wrapper so i can take notes

## usage

```
--tend--
    tend command [arguments, ...]
commands:
    qs - quick stats
    qs
    le - list entity
    le [id]
    lel - list entity long
    lel [id]
    la - list all aliases for an entity
    la [entity id]
    ls - list all snippets for an entity
    ls [entity id]
    fa - find an entity by alias
    fa [name]
    fal - find an entity by alias long
    fal [name]
    fs - find a snippet by string
    fs [string]
    ae - add an entity
    ae [name]
    aa - add an alias to an entity
    aa [id] [name]
    as - add snippet to an entity
    as [id]
    ea - edit an entity
    ea [id]
    es - edit a snippet
    es [id]
    de - delete an entity
    de [id]
    da - delete an alias
    da [id]
    ds - delete a snippet
    ds [id]
```

all the commands arguments in `[ ]` are optional and will be prompted for

## prerequisites

- postgresql installed and running locally
- your user is allowed to access it


just runing the sql file in a database titled tend will work fine
otherwise TENDPSQL can be set to override the connection command as needed
