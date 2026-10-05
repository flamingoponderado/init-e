import InitE.BackendStages.Metadata.Data362
import InitE.BackendStages.Filtered362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis362_eq : ffiLines Filtered362.lines = localFfis362 := by
  with_unfolding_all rfl
theorem ffiStep362 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis362) : LabToTarget.findFfiNames (Filtered362 :: rest) = suffixFfis362 := by
  rw [findFfiNames_section, localFfis362_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep362
end InitE.BackendStages.Metadata
