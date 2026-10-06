import InitE.BackendStages.Metadata.Data238
import InitE.BackendStages.Filtered238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis238_eq : ffiLines Filtered238.lines = localFfis238 := by
  with_unfolding_all rfl
theorem ffiStep238 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis238) : LabToTarget.findFfiNames (Filtered238 :: rest) = suffixFfis238 := by
  rw [findFfiNames_section, localFfis238_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep238
end InitE.BackendStages.Metadata
