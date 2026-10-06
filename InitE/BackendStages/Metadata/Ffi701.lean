import InitE.BackendStages.Metadata.Data701
import InitE.BackendStages.Filtered701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis701_eq : ffiLines Filtered701.lines = localFfis701 := by
  with_unfolding_all rfl
theorem ffiStep701 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis701) : LabToTarget.findFfiNames (Filtered701 :: rest) = suffixFfis701 := by
  rw [findFfiNames_section, localFfis701_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep701
end InitE.BackendStages.Metadata
