import InitE.BackendStages.Metadata.Data340
import InitE.BackendStages.Filtered340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis340_eq : ffiLines Filtered340.lines = localFfis340 := by
  with_unfolding_all rfl
theorem ffiStep340 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis340) : LabToTarget.findFfiNames (Filtered340 :: rest) = suffixFfis340 := by
  rw [findFfiNames_section, localFfis340_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep340
end InitE.BackendStages.Metadata
