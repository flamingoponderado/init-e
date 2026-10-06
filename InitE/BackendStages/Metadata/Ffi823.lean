import InitE.BackendStages.Metadata.Data823
import InitE.BackendStages.Filtered823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis823_eq : ffiLines Filtered823.lines = localFfis823 := by
  with_unfolding_all rfl
theorem ffiStep823 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis823) : LabToTarget.findFfiNames (Filtered823 :: rest) = suffixFfis823 := by
  rw [findFfiNames_section, localFfis823_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep823
end InitE.BackendStages.Metadata
