import InitE.BackendStages.Metadata.Data646
import InitE.BackendStages.Filtered646
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis646_eq : ffiLines Filtered646.lines = localFfis646 := by
  with_unfolding_all rfl
theorem ffiStep646 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis646) : LabToTarget.findFfiNames (Filtered646 :: rest) = suffixFfis646 := by
  rw [findFfiNames_section, localFfis646_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep646
end InitE.BackendStages.Metadata
