import InitE.BackendStages.Metadata.Data508
import InitE.BackendStages.Filtered508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis508_eq : ffiLines Filtered508.lines = localFfis508 := by
  with_unfolding_all rfl
theorem ffiStep508 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis508) : LabToTarget.findFfiNames (Filtered508 :: rest) = suffixFfis508 := by
  rw [findFfiNames_section, localFfis508_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep508
end InitE.BackendStages.Metadata
