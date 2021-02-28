import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation minvoke |
            minvoke.getMacro().getName().regexpMatch("ntoh.*")
            and
            minvoke.getExpr() = this
        )
    }
}


from NetworkByteSwap n
select n, "Network byte swap" 