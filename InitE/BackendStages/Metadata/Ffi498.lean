import InitE.BackendStages.Metadata.Data498
import InitE.BackendStages.Filtered498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis498_eq : ffiLines Filtered498.lines = localFfis498 := by
  with_unfolding_all rfl
theorem ffiStep498 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis498) : LabToTarget.findFfiNames (Filtered498 :: rest) = suffixFfis498 := by
  rw [findFfiNames_section, localFfis498_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep498
end InitE.BackendStages.Metadata
