Democracy is a popular idea today. Many people want to use voting in their cryptocurrency consensus mechanisms.
The reason we haven't been able to use voting so far is because the incentive to vote honestly decreases by the square of the portion of coins that you own. So the cost of bribing a voter to be malicious is much smaller than how many coins the voter controls.
Threshold signature schemes have been proposed as a way to overcome this limitation, and enable voting consensus mechanisms.

The goal of this paper is to prove that threshold signatures scheme are not good enough. It is mathematically impossible for them to have the properties we need.

Lets start with a simple example. Alice, Bob, Charlie, Dan, and Evan are participating in a 3 out of 5 threshold signature scheme. Alice, Bob, and Charlie want to sign, Dan and Evan do not want to sign. Everyone wants to prove how they participated.
If threshold signatures were good enough for cryptocurrency consensus mechanisms, that would mean it is impossible for any of Alice, Bob, Charlie, Dan or Evan to prove how they participated, even if they reveal their private keys.


Each person can choose to contribute to the signature. So there are up to 5 signature pieces that are created, which when combined form a valid signature. Lets call them: A, B, C, D, E.

If Alice reveals her private key, then it is possible to use it to re-create A.
So, once the private keys are revealed, each participant can prove which signature piece they created.

The threshold signature scheme involves an algorithm that combines signature pieces into a signature.
We can keep testing this algorithm on different subsets of signature pieces.
Combine(A, B, C, D, E) produces a valid signature.
Combine(A, B, C) produces a valid signature.
Combine(A, B, D) produces an invalid signature.
Combine(A, B, E) produces an invalid signature.

So, we can prove which signature pieces are valid, and which are not.

We know which signature piece came from which person, and we also know which signature pieces are valid,
therefore we know which person did and did not sign.