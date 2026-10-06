import InitE.BackendStages.Metadata.Data336
import InitE.BackendStages.Filtered336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis336_eq : ffiLines Filtered336.lines = localFfis336 := by
  with_unfolding_all rfl
theorem ffiStep336 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis336) : LabToTarget.findFfiNames (Filtered336 :: rest) = suffixFfis336 := by
  rw [findFfiNames_section, localFfis336_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep336
end InitE.BackendStages.Metadata
