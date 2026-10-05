import InitE.BackendStages.Metadata.Data585
import InitE.BackendStages.Filtered585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis585_eq : ffiLines Filtered585.lines = localFfis585 := by
  with_unfolding_all rfl
theorem ffiStep585 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis585) : LabToTarget.findFfiNames (Filtered585 :: rest) = suffixFfis585 := by
  rw [findFfiNames_section, localFfis585_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep585
end InitE.BackendStages.Metadata
