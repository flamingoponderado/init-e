import InitE.BackendStages.Metadata.Data90
import InitE.BackendStages.Filtered90
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis90_eq : ffiLines Filtered90.lines = localFfis90 := by
  with_unfolding_all rfl
theorem ffiStep90 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis90) : LabToTarget.findFfiNames (Filtered90 :: rest) = suffixFfis90 := by
  rw [findFfiNames_section, localFfis90_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep90
end InitE.BackendStages.Metadata
