import InitE.BackendStages.Metadata.Data76
import InitE.BackendStages.Filtered76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis76_eq : ffiLines Filtered76.lines = localFfis76 := by
  with_unfolding_all rfl
theorem ffiStep76 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis76) : LabToTarget.findFfiNames (Filtered76 :: rest) = suffixFfis76 := by
  rw [findFfiNames_section, localFfis76_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep76
end InitE.BackendStages.Metadata
