import InitE.BackendStages.Metadata.Data833
import InitE.BackendStages.Filtered833
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis833_eq : ffiLines Filtered833.lines = localFfis833 := by
  with_unfolding_all rfl
theorem ffiStep833 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis833) : LabToTarget.findFfiNames (Filtered833 :: rest) = suffixFfis833 := by
  rw [findFfiNames_section, localFfis833_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep833
end InitE.BackendStages.Metadata
