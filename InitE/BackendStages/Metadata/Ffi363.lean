import InitE.BackendStages.Metadata.Data363
import InitE.BackendStages.Filtered363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis363_eq : ffiLines Filtered363.lines = localFfis363 := by
  with_unfolding_all rfl
theorem ffiStep363 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis363) : LabToTarget.findFfiNames (Filtered363 :: rest) = suffixFfis363 := by
  rw [findFfiNames_section, localFfis363_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep363
end InitE.BackendStages.Metadata
