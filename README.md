# tend
a super simple bash wrapper so i can take notes

## usage

```
--tend--
    tend command [arguments, ...]
commands:
    qs - quick stats
    qs
  listing:
    le - list entity
    le [id]
    lel - list entity long
    lel [id]
    la - list all aliases for an entity
    la [entity id]
    lr - list relation
    lr [id]
    lrl - list relation long
    lrl [id]
    ls - list all snippets for an entity
    ls [entity id]
    lrs - list all relation snippets for a relation
    lrs [id]
  searching:
    fa - find an entity by alias
    fa [name]
    fal - find an entity by alias long
    fal [name]
    fs - find a snippet by string
    fs [string]
    fr - find a relation by entity id
    fr [entity id]
    frl - find a relation by entity id long
    frl [entity id]
    frs - find a relation snippet by string
    frs [string]
  adding:
    ae - add an entity
    ae [name]
    aa - add an alias to an entity
    aa [id] [name]
    ar - add a relation between two entities
    ar [id_a] [id_b]
    ars - add a snippet to a relation
    ars [id]
    as - add snippet to an entity
    as [id]
  editing:
    ea - edit an entity
    ea [id]
    es - edit a snippet
    es [id]
    ers - edit a relation snippet
    ers [id]
  deleting:
    de - delete an entity
    de [id]
    da - delete an alias
    da [id]
    dr - delete a relation
    dr [id]
    ds - delete a snippet
    ds [id]
    drs - delete a relation snippet
    drs [id]
```

all the commands arguments in `[ ]` are optional and will be prompted for

## prerequisites

- postgresql installed and running locally
- your user is allowed to access it


just runing the sql file in a database titled tend will work fine
otherwise TENDPSQL can be set to override the connection command as needed
