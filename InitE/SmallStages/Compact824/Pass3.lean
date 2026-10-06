import InitE.CompactComputation
import InitE.SmallStages.Compact824.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact824
theorem pass3_eq : WordAlloc.removeDeadProg pass2 = pass3 := by
  kernel_rfl
#print axioms pass3_eq
end InitE.SmallStages.Compact824
