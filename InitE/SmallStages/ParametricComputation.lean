import Lean
import InitE.DeadComputation
import InitE.ClashComputation
import Flapjack.Compiler.Backend.WordToWord.FastCompile
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
namespace InitE.SmallStages.ParametricComputation
attribute [scoped cbv_eval] Flapjack.WordAlloc.removeDeadStructural_eq
end InitE.SmallStages.ParametricComputation
