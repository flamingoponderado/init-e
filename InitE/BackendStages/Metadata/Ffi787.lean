import InitE.BackendStages.Metadata.Data787
import InitE.BackendStages.Filtered787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis787_eq : ffiLines Filtered787.lines = localFfis787 := by
  with_unfolding_all rfl
theorem ffiStep787 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis787) : LabToTarget.findFfiNames (Filtered787 :: rest) = suffixFfis787 := by
  rw [findFfiNames_section, localFfis787_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep787
end InitE.BackendStages.Metadata
