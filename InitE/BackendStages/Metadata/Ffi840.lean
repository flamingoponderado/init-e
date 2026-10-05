import InitE.BackendStages.Metadata.Data840
import InitE.BackendStages.Filtered840
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis840_eq : ffiLines Filtered840.lines = localFfis840 := by
  with_unfolding_all rfl
theorem ffiStep840 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis840) : LabToTarget.findFfiNames (Filtered840 :: rest) = suffixFfis840 := by
  rw [findFfiNames_section, localFfis840_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep840
end InitE.BackendStages.Metadata
