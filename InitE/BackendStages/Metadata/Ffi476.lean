import InitE.BackendStages.Metadata.Data476
import InitE.BackendStages.Filtered476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis476_eq : ffiLines Filtered476.lines = localFfis476 := by
  with_unfolding_all rfl
theorem ffiStep476 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis476) : LabToTarget.findFfiNames (Filtered476 :: rest) = suffixFfis476 := by
  rw [findFfiNames_section, localFfis476_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep476
end InitE.BackendStages.Metadata
