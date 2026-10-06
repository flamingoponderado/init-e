import InitE.BackendStages.Metadata.Data183
import InitE.BackendStages.Filtered183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis183_eq : ffiLines Filtered183.lines = localFfis183 := by
  with_unfolding_all rfl
theorem ffiStep183 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis183) : LabToTarget.findFfiNames (Filtered183 :: rest) = suffixFfis183 := by
  rw [findFfiNames_section, localFfis183_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep183
end InitE.BackendStages.Metadata
