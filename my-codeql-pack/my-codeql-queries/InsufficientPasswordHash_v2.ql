/**
 * @name Use of password hash with insufficient computational effort
 * @description Creating a hash of a password with low computational effort makes the hash vulnerable to password cracking attacks.
 * @kind path-problem
 * @problem.severity warning
 * @security-severity 8.1
 * @precision high
 * @id js/insufficient-password-hash
 * @tags security
 *       external/cwe/cwe-916
 */
/**
import javascript
import semmle.javascript.security.dataflow.InsufficientPasswordHashQuery
import DataFlow::PathGraph
import semmle.javascript.security.internal.CryptoAlgorithmNames

from Configuration cfg, DataFlow::PathNode source
select source
