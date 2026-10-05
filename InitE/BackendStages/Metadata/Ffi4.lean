import InitE.BackendStages.Metadata.Data4
import InitE.BackendStages.Filtered4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis4_eq : ffiLines Filtered4.lines = localFfis4 := by
  with_unfolding_all rfl
theorem ffiStep4 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis4) : LabToTarget.findFfiNames (Filtered4 :: rest) = suffixFfis4 := by
  rw [findFfiNames_section, localFfis4_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep4
end InitE.BackendStages.Metadata
