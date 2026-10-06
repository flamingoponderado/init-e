import InitE.BackendStages.Metadata.Data552
import InitE.BackendStages.Filtered552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis552_eq : ffiLines Filtered552.lines = localFfis552 := by
  with_unfolding_all rfl
theorem ffiStep552 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis552) : LabToTarget.findFfiNames (Filtered552 :: rest) = suffixFfis552 := by
  rw [findFfiNames_section, localFfis552_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep552
end InitE.BackendStages.Metadata
