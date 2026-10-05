import InitE.SmallStages.Compact428.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact428
theorem pass4_eq : WordCse.wordCommonSubexpElim pass3 = pass4 := by
  with_unfolding_all rfl
#print axioms pass4_eq
end InitE.SmallStages.Compact428
