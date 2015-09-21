# inference
An Engine to answer questions based on provided truths.

Inference Engine
This week's Ruby Quiz is to build an inference engine that is capable of answering questions based on the provided truths.

You should be able to teach your engine truths with the following inputs:

- All PLURAL-NOUN are PLURAL-NOUN.
- No PLURAL-NOUN are PLURAL-NOUN.
- Some PLURAL-NOUN are PLURAL-NOUN.
- Some PLURAL-NOUN are not PLURAL-NOUN.

You should also be able to query your engine with the following questions:

- Are all PLURAL-NOUN PLURAL-NOUN?
- Are no PLURAL-NOUN PLURAL-NOUN?
- Are any PLURAL-NOUN PLURAL-NOUN?
- Are any PLURAL-NOUN not PLURAL-NOUN?
- Describe PLURAL-NOUN.

Here's a sample to show how all of this fits together:

> All mammals are hairy animals.
OK.
> All dogs are mammals.
OK.
> All beagles are dogs.
OK.
> Are all beagles hairy animals?
Yes, all beagles are hairy animals.
> All cats are mammals.
OK.
> All cats are hairy animals.
I know.
> Are all cats dogs?
I don't know.
> No cats are dogs.
OK.
> Are all cats dogs?
No, not all cats are dogs.
> Are no cats dogs?
Yes, no cats are dogs.
> All mammals are dogs.
Sorry, that contradicts what I already know.
> Some mammals are brown animals.
OK.
> Are any mammals dogs?
Yes, some mammals are dogs.
> Are any dogs brown animals?
I don't know.
> Some dogs are brown animals.
OK.
> All brown animals are brown things.
OK.
> Are any dogs brown things?
Yes, some dogs are brown things.
> Describe dogs.
All dogs are mammals.
All dogs are hairy animals.
No dogs are cats.
Some dogs are beagles.
Some dogs are brown animals.
Some dogs are brown things.
> Are all goldfish mammals?
I don't know anything about goldfish.

Extra Credit:

> All dogs are mammals
OK.
> No octopuses are mammals
OK.
> Are any octopuses dogs?
I don't know.

That's not the correct answer. See how your engine answers that question.

Quiz Summary

irb(main):005:0> are any programmers happy programmers?
=> Yes, some programmers are happy programmers.
irb(main):006:0> are all Ruby programmers happy programmers?
=> Yes, all ruby programmers are happy programmers.
irb(main):007:0> are any Python programmers happy programmers?
=> I don't know.

