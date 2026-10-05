import InitE.BackendStages.Metadata.Data391
import InitE.BackendStages.Filtered391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis391_eq : ffiLines Filtered391.lines = localFfis391 := by
  with_unfolding_all rfl
theorem ffiStep391 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis391) : LabToTarget.findFfiNames (Filtered391 :: rest) = suffixFfis391 := by
  rw [findFfiNames_section, localFfis391_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep391
end InitE.BackendStages.Metadata
