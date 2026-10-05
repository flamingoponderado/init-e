import InitE.BackendStages.Metadata.Data526
import InitE.BackendStages.Filtered526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis526_eq : ffiLines Filtered526.lines = localFfis526 := by
  with_unfolding_all rfl
theorem ffiStep526 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis526) : LabToTarget.findFfiNames (Filtered526 :: rest) = suffixFfis526 := by
  rw [findFfiNames_section, localFfis526_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep526
end InitE.BackendStages.Metadata
