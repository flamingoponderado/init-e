import InitE.BackendStages.Metadata.Data395
import InitE.BackendStages.Filtered395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis395_eq : ffiLines Filtered395.lines = localFfis395 := by
  with_unfolding_all rfl
theorem ffiStep395 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis395) : LabToTarget.findFfiNames (Filtered395 :: rest) = suffixFfis395 := by
  rw [findFfiNames_section, localFfis395_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep395
end InitE.BackendStages.Metadata
