import InitE.CseStages713.Closed
set_option autoImplicit false
set_option Elab.async false
namespace InitE.WordStages.Sparse713
open Flapjack.Compiler.Backend
theorem pass713_4_eq : WordCse.wordCommonSubexpElim pass713_3 = pass713_4 :=
  InitE.CseStages713.cse713_eq
#print axioms pass713_4_eq
end InitE.WordStages.Sparse713
