import InitE.BackendStages.Metadata.Data633
import InitE.BackendStages.Filtered633
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis633_eq : ffiLines Filtered633.lines = localFfis633 := by
  with_unfolding_all rfl
theorem ffiStep633 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis633) : LabToTarget.findFfiNames (Filtered633 :: rest) = suffixFfis633 := by
  rw [findFfiNames_section, localFfis633_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep633
end InitE.BackendStages.Metadata
