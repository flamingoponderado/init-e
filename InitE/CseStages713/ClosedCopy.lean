import InitE.CseStages713.DefinitionalCopy
import InitE.WordStages.Sparse713.Data4
import InitE.WordStages.Sparse713.Data5
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitE.CseStages713
open Flapjack.Compiler.Backend

theorem copy713_eq :
    WordCopy.copyProp InitE.WordStages.Sparse713.pass713_4 =
      InitE.WordStages.Sparse713.pass713_5 := by
  exact definitionalCopy

#print axioms copy713_eq
end InitE.CseStages713
