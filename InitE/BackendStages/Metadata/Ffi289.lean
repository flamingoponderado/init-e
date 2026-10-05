import InitE.BackendStages.Metadata.Data289
import InitE.BackendStages.Filtered289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis289_eq : ffiLines Filtered289.lines = localFfis289 := by
  with_unfolding_all rfl
theorem ffiStep289 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis289) : LabToTarget.findFfiNames (Filtered289 :: rest) = suffixFfis289 := by
  rw [findFfiNames_section, localFfis289_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep289
end InitE.BackendStages.Metadata
