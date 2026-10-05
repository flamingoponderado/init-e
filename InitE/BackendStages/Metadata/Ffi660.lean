import InitE.BackendStages.Metadata.Data660
import InitE.BackendStages.Filtered660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis660_eq : ffiLines Filtered660.lines = localFfis660 := by
  with_unfolding_all rfl
theorem ffiStep660 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis660) : LabToTarget.findFfiNames (Filtered660 :: rest) = suffixFfis660 := by
  rw [findFfiNames_section, localFfis660_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep660
end InitE.BackendStages.Metadata
