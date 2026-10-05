import InitE.BackendStages.Metadata.Data575
import InitE.BackendStages.Filtered575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis575_eq : ffiLines Filtered575.lines = localFfis575 := by
  with_unfolding_all rfl
theorem ffiStep575 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis575) : LabToTarget.findFfiNames (Filtered575 :: rest) = suffixFfis575 := by
  rw [findFfiNames_section, localFfis575_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep575
end InitE.BackendStages.Metadata
