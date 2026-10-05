import InitE.BackendStages.Metadata.Data184
import InitE.BackendStages.Filtered184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis184_eq : ffiLines Filtered184.lines = localFfis184 := by
  with_unfolding_all rfl
theorem ffiStep184 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis184) : LabToTarget.findFfiNames (Filtered184 :: rest) = suffixFfis184 := by
  rw [findFfiNames_section, localFfis184_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep184
end InitE.BackendStages.Metadata
