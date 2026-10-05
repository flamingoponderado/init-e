import InitE.BackendStages.Metadata.Data220
import InitE.BackendStages.Filtered220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis220_eq : ffiLines Filtered220.lines = localFfis220 := by
  with_unfolding_all rfl
theorem ffiStep220 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis220) : LabToTarget.findFfiNames (Filtered220 :: rest) = suffixFfis220 := by
  rw [findFfiNames_section, localFfis220_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep220
end InitE.BackendStages.Metadata
