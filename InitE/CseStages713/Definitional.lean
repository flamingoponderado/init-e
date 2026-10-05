import InitE.CseStages713.Data3
import InitE.CseStages713.Data4
import Lean
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitE.CseStages713
open Flapjack.Compiler.Backend
theorem definitional : WordCse.wordCommonSubexpElim pass713_3 = pass713_4 := by
  with_unfolding_all rfl
#print axioms definitional
end InitE.CseStages713
