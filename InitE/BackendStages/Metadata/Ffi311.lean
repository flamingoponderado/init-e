import InitE.BackendStages.Metadata.Data311
import InitE.BackendStages.Filtered311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis311_eq : ffiLines Filtered311.lines = localFfis311 := by
  with_unfolding_all rfl
theorem ffiStep311 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis311) : LabToTarget.findFfiNames (Filtered311 :: rest) = suffixFfis311 := by
  rw [findFfiNames_section, localFfis311_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep311
end InitE.BackendStages.Metadata
