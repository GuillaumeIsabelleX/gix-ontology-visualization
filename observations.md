# Observation

ANnotate my observation.

* A dot language file is generated from the parsing the inputs file (ontology description and the actual entities 

# Structural ELement of Ontology Languag

* There iso **Class**,  **DatatypeProperty** and **ObjectProperty** in the Ontology Web Language (OWL)


## Writting Ontologies

### Ontological Abstraction definition

The first TTL along the list descripbe the genericity of the ontology, meaning their abstract classes and relationship they have.
``` ttl

:Person a owl:Class .
:Man owl:subClassOf :Person .
:Woman owl:subClassOf :Person .
:name a owl:DatatypeProperty .
:hasSpouse a owl:ObjectProperty .
:hasParent a owl:ObjectProperty .

```

### Ontological Instances description

Then a concrete class describe the actual entities that are derived frome the abstract classes created

``` ttl

:John a :Man ;
    :name "John" ;
    :hasSpouse :Mary .
:Mary a :Woman ;
    :name "Mary" ;
    :hasSpouse :John .
:John_jr a :Man ;
    :name "John Jr." ;
    :hasParent :John, :Mary .

```
