import InitE.CseStages700.Data3
import InitE.CseStages700.Data4
import Lean
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitE.CseStages700
open Flapjack.Compiler.Backend
theorem definitional : WordCse.wordCommonSubexpElim pass700_3 = pass700_4 := by
  with_unfolding_all rfl
#print axioms definitional
end InitE.CseStages700
