import InitE.BackendStages.Metadata.Data397
import InitE.BackendStages.Filtered397
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis397_eq : ffiLines Filtered397.lines = localFfis397 := by
  with_unfolding_all rfl
theorem ffiStep397 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis397) : LabToTarget.findFfiNames (Filtered397 :: rest) = suffixFfis397 := by
  rw [findFfiNames_section, localFfis397_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep397
end InitE.BackendStages.Metadata
