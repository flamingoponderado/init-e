import InitE.BackendStages.Alignment867
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
def localLabelsFinal_867 : List (Nat × Nat) :=
[(3, 865856), (2, 865848), (1, 865828)]
theorem localLabelsFinal_867_eq : LabToTarget.sectionLabels 865828 Alignment867.lines [] = (865856, localLabelsFinal_867) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_867_eq
end InitE.BackendStages
