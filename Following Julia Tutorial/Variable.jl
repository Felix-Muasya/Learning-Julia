# Variables In Julia
# Variables are case sensitive in Julia, Example below
X = 10
x = 1
x+X

# Unicode Names are allowed
σ = 0.00001
ψ = 0.223

# I'm starting to love Julia, the use of greek sign will be really useful in the future


#= Variable names must begin with a letter (A-Z or a-z), underscore, or a 
subset of Unicode code points greater than 00A0; in particular, 
Unicode character categories Lu/Ll/Lt/Lm/Lo/Nl (letters), 
Sc/So (currency and other symbols), and a few other 
letter-like characters (e.g. a subset of the Sm math symbols) are allowed. 
Subsequent characters may also include ! and digits 
(0-9 and other characters in categories Nd/No), as well 
as other Unicode code points: diacritics and other 
modifying marks (categories Mn/Mc/Me/Sk), some punctuation 
connectors (category Pc), primes, and a few other characters. =#

#= Operators like + are also valid identifiers, but are parsed specially.
In some contexts, operators can be used just like variables;
for example (+) refers to the addition function, and (+) = f will reassign it.
Most of the Unicode infix operators (in category Sm), such as ⊕, 
are parsed as infix operators and are available for user-defined methods 
(e.g. you can use const ⊗ = kron to define ⊗ as an infix Kronecker product).
Operators can also be suffixed with modifying marks, primes, and sub/superscripts, 
e.g. +̂ₐ″ is parsed as an infix operator with the same precedence as +. 
A space is required between an operator that ends with a subscript/superscript 
letter and a subsequent variable name. For example, if +ᵃ is an operator, 
then +ᵃx must be written as +ᵃ x to distinguish it from + ᵃx where ᵃx is the variable name. =#

x, ___ = size([2 2; 1 1])
y = ___ #This line should produce an error

# The only explicitly disallowed names for variables are the names of the built-in Keywords

#= While Julia imposes few restrictions on valid names, it has become useful to adopt the following conventions:
    1. Names of variables are in lower case.
    2. Word separation can be indicated by underscores ('_'), 
       but use of underscores is discouraged unless the name would be hard to read otherwise.
    3. Names of Types and Modules begin with a capital letter and word separation 
       is shown with upper camel case instead of underscores.
    4. Names of functions and macros are in lower case, without underscores.
    5. Functions that write to their arguments have names that end in !. 
       These are sometimes called "mutating" or "in-place" functions 
       because they are intended to produce changes in their arguments after 
       the function is called, not just return a value. =#
