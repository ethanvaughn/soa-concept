# soa-concept
Proof of concept of the Process-Oriented Programming paradigm employed by Elixir OTP. Using GenStage, every process is an OTP supervision tree to ensure that the processes are restared on failure.

The key to this concept is to implement the Service-oriented architecture (SOA) between two services. This is particularly enabled by Elixir and OTP. 

From the article "A Guide to Process-oriented Programming in Elixir and OTP" by [Michael Latta]([https://link-url-here.org](https://www.toptal.com/resume/michael-latta)): 

>The use of separate processes to receive [data] allows each [piece of data] to be received independent of any other [piece of data], logged upon receipt, and batched to the next set of processes, reducing load on those systems significantly. For a system that consumes a large amount of data, reducing the volume of data by use of layers of processes is a common and useful pattern.
>
>By performing the computation in an isolated set of processes, we can manage the load on those processes and ensure their stability and resource requirements.
>
>By placing the result presentation in an isolated set of processes, we both control load to the rest of the system and allow the set of processes to be scaled dynamically for load.

From the article "Supervison trees and applications" in the Elixir Hexdocs:

>Elixir developers tend to refer to those practices as "defensive programming". That's because a live production system has dozens of different reasons why something can go wrong. The disk can fail, memory can be corrupted, bugs, the network may stop working for a second, etc. If we were to write software that attempted to protect or circumvent all of those errors, we would spend more time handling failures than writing our own software!