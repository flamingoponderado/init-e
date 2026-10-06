import InitE.BackendStages.Metadata.Data493
import InitE.BackendStages.Filtered493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis493_eq : ffiLines Filtered493.lines = localFfis493 := by
  with_unfolding_all rfl
theorem ffiStep493 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis493) : LabToTarget.findFfiNames (Filtered493 :: rest) = suffixFfis493 := by
  rw [findFfiNames_section, localFfis493_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep493
end InitE.BackendStages.Metadata
