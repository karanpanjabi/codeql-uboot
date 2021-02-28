import cpp

from MacroInvocation maccess
where maccess.getMacro().getName().regexpMatch("ntoh.*")
select maccess.getExpr(), "Macro access ntoh*"