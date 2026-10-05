import InitE.CseStages713.ClosedCopy
set_option autoImplicit false
set_option Elab.async false
namespace InitE.WordStages.Sparse713
open Flapjack.Compiler.Backend
theorem pass713_5_eq : WordCopy.copyProp pass713_4 = pass713_5 :=
  InitE.CseStages713.copy713_eq
#print axioms pass713_5_eq
end InitE.WordStages.Sparse713
