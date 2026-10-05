import InitE.CseStages713.Definitional
import InitE.WordStages.Sparse713.Data3
import InitE.WordStages.Sparse713.Data4
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitE.CseStages713
open Flapjack.Compiler.Backend

theorem cse713_eq :
    WordCse.wordCommonSubexpElim InitE.WordStages.Sparse713.pass713_3 =
      InitE.WordStages.Sparse713.pass713_4 := by
  exact definitional

#print axioms cse713_eq
end InitE.CseStages713
