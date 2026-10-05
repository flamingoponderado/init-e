import InitE.BackendStages.Alignment688
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
def localLabelsFinal_688 : List (Nat × Nat) :=
[(2, 541816), (1, 541800)]
theorem localLabelsFinal_688_eq : LabToTarget.sectionLabels 541800 Alignment688.lines [] = (541816, localLabelsFinal_688) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_688_eq
end InitE.BackendStages
