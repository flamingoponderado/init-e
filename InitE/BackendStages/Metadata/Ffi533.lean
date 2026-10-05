import InitE.BackendStages.Metadata.Data533
import InitE.BackendStages.Filtered533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis533_eq : ffiLines Filtered533.lines = localFfis533 := by
  with_unfolding_all rfl
theorem ffiStep533 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis533) : LabToTarget.findFfiNames (Filtered533 :: rest) = suffixFfis533 := by
  rw [findFfiNames_section, localFfis533_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep533
end InitE.BackendStages.Metadata
